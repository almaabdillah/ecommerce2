<?php

namespace App\Http\Livewire\Admin;

use App\Models\Category;
use App\Models\Product;
use Carbon\Carbon;
use Livewire\Component;
use Illuminate\Support\Str;
use Livewire\WithFileUploads;

class AdminAddProductComponent extends Component
{
    use WithFileUploads;

    public $name;
    public $slug;
    public $short_description;
    public $description;
    public $regular_price;
    public $sale_price;
    public $sku;
    public $stock_status = 'instock';
    public $featured = false;
    public $quantity;
    public $image;
    public $category_id;

    public function generateSlug()
    {
        return Str::slug($this->name);
    }

    public function addProduct()
    {
        // Validating Request Input
        $this->validate([
            'name'=>'required',
            'slug'=>'',
            'short_description'=>'required',
            'description'=>'required',
            'regular_price'=>'required',
            'sale_price'=>'required',
            'sku'=>'required',
            'featured'=>'required',
            'quantity'=>'required',
            'image'=>'required',
            'category_id'=>'required'
        ]);

        // Initial Product Data Model
        $product = new Product([
            'name' => $this->name,
            'slug' => !empty($this->slug) ? Str::slug($this->slug) : $this->generateSlug(),
            'short_description' => $this->short_description,
            'description' => $this->description,
            'regular_price' => str_replace('.', '', $this->regular_price),
            'sale_price' => str_replace('.', '', $this->sale_price),
            'SKU' => 'PRD'. $this->sku,
            'stock_status' => 'instock',
            'featured' => $this->featured,
            'quantity' => str_replace('.', '', $this->quantity),
        ]);

        // Store Image to Linked Storage Directory
        $imageName = Carbon::now()->timestamp.'.'.$this->image->extension();
        $this->image->storeAs('products', $imageName);

        // Append Image and Category Id to Product Array
        $product['image'] = asset("storage/products/$imageName");
        $product['category_id'] = $this->category_id;

        // Save Product to Table
        $product->save();

        // Flash Session Message if Success
        session()->flash('message','product has been added!');

        // Return Redirect to Product Index Page
        return redirect()->to(route('admin.products'));
    }

    public function render()
    {
        $categories = Category::orderBy('name','ASC')->get();
        return view('livewire.admin.admin-add-product-component',['categories'=>$categories]);
    }
}
