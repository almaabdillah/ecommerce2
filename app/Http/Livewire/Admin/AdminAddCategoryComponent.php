<?php

namespace App\Http\Livewire\Admin;

use App\Models\Category;
use Carbon\Carbon;
use Livewire\Component;
use Illuminate\Support\Str;
use Livewire\WithFileUploads;

class AdminAddCategoryComponent extends Component
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
     * @var file
     */
    public $image;

    /**
     * @var bool
     */
    public $is_popular = false;

    /**
     * @return string
     */
    public function generateSlug()
    {
        return Str::slug($this->name);
    }

    /**
     * @param array
     * @return void
     */
    public function updated($fields)
    {
        $this->validateOnly($fields,[
            'name'=>'required|unique:categories,name',
            'slug'=> '',
            'image'=>'required'
        ]);
    }

    /**
     * @return RedirectResponse
     */
    public function storeCategory()
    {
        // Validating User Request Input
        $this->validate([
            'name'=>'required|unique:categories,name',
            'slug'=> '',
            'image'=>'required'
        ]);

        // Initital Category Data Model
        $category = new Category([
            'name' => $this->name,
            'slug' => !empty($this->slug) ? Str::slug($this->slug) : $this->generateSlug(),
            'is_popular' => $this->is_popular,
        ]);

        // Store Image to Linked Storage Directory
        $imageName = Carbon::now()->timestamp.'.'.$this->image->extension();
        $this->image->storeAs('categories', $imageName);

        // Append Image to Category Array
        $category['image'] = asset("storage/categories/$imageName");

        // Store Data to Category Table
        $category->save();

        // Flash Session Success Message
        session()->flash('message','Category has been created successfully !');

        return redirect()->to(route('admin.categories'));
    }

    /**
     * @return View
     */
    public function render()
    {
        // return redirect()->route('product.category');
        return view('livewire.admin.admin-add-category-component');
    }
}
