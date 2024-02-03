<?php

namespace App\Http\Livewire\Admin;

use App\Models\Category;
use Illuminate\Support\Facades\Storage;
use Livewire\Component;
use Livewire\WithPagination;

class AdminCategoriesComponent extends Component
{
    public $category_id;

    use WithPagination;

    public function deleteCategory()
    {
        // Category Model and Get Filename
        $category = Category::find($this->category_id);
        $filename = $category->getFileName();

        // Delete File in Storage Dir
        Storage::delete("app/public/categories/$filename");

        // Delete Specified Category Data
        $category->delete();

        session()->flash('message','Category has been deleted successfully!');
    }

    public function render()
    {
        $categories = Category::orderBy('name','ASC')->paginate(5);

        return view('livewire.admin.admin-categories-component',['categories'=>$categories]);
    }


}
