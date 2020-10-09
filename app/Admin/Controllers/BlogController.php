<?php

namespace App\Admin\Controllers;

use App\Blog;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class BlogController extends Controller
{
    use HasResourceActions;

    /**
     * Index interface.
     *
     * @param Content $content
     * @return Content
     */
    public function index(Content $content)
    {
        return $content
            ->header('Index')
            ->description('description')
            ->body($this->grid());
    }

    /**
     * Show interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function show($id, Content $content)
    {
        return $content
            ->header('Detail')
            ->description('description')
            ->body($this->detail($id));
    }

    /**
     * Edit interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function edit($id, Content $content)
    {
        return $content
            ->header('Edit')
            ->description('description')
            ->body($this->form()->edit($id));
    }

    /**
     * Create interface.
     *
     * @param Content $content
     * @return Content
     */
    public function create(Content $content)
    {
        return $content
            ->header('Create')
            ->description('description')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Blog);

        $grid->id('Id');
        $grid->title('Title');
        $grid->slug('Slug');
        $grid->description('Description');
        $grid->image('Image');
        $grid->created_at('Created at');
        $grid->updated_at('Updated at');
        $grid->published_at('Published at');

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Blog::findOrFail($id));

        $show->id('Id');
        $show->title('Title');
        $show->slug('Slug');
        $show->description('Description');
        $show->image('Image');
        //$show->files('Archivos');
        $show->created_at('Created at');
        $show->updated_at('Updated at');
        $show->published_at('Published at');

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Blog);

        $form->text('title', 'Title');
        $form->text('slug', 'Slug');

        //$form->textarea('description', 'Description');
        $form->ckeditor('description');
        $form->image('image', 'Image');
        $form->multipleFile('files', 'Archivos');
        $form->datetime('published_at', 'Published at')->default(date('Y-m-d H:i:s'));
        // Add a switch field
        $form->switch('published', 'Publico');
        $form->text('keywords', 'Palabras clave (separar con comas)');
        return $form;
    }
}
