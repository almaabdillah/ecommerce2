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

    /**
     * @var string
     */
    public $name;

    /**
     * @var string
     */
    public $slug;

    /**
     * @var string
     */
    public $short_description;

    /**
     * @var string
     */
    public $description;

    /**
     * @var string|int
     */
    public $regular_price;

    /**
     * @var string|int
     */
    public $sale_price;

    /**
     * @var string|int
     */
    public $sku;

    /**
     * @var string
     */
    public $stock_status = 'instock';

    /**
     * @var bool
     */
    public $featured = false;

    /**
     * @var int
     */
    public $quantity;

    /**
     * @var file
     */
    public $image;

    /**
     * @var int
     */
    public $category_id;

    /**
     * @return string
     */
    public function generateSlug()
    {
        return Str::slug($this->name);
    }

    /**
     * @return RedirectResponse
     */
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

    /**
     * @return View
     */
    public function render()
    {
        $categories = Category::orderBy('name','ASC')->get();
        return view('livewire.admin.admin-add-product-component',['categories'=>$categories]);
    }
}
