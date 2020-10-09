<?php

namespace App\Admin\Controllers;

use App\Exclusive;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Request;
use Illuminate\Support\Str as Str;
use Vinkla\Hashids\Facades\Hashids;


class ExclusiveController extends Controller
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
        $grid = new Grid(new Exclusive);

        $grid->id('Id');
        $grid->title('Title');
        $grid->zoom('Exclusive');
        $grid->url('Url');
        $grid->date('Date');
        $grid->published('Published');
        $grid->created_at('Created at');
        $grid->updated_at('Updated at');

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
        $show = new Show(Exclusive::findOrFail($id));

        $show->id('Id');
        $show->title('Title');
        $show->zoom('Exclusive');
        $show->url('Url');
        $show->date('Date');
        $show->published('Published');
        $show->created_at('Created at');
        $show->updated_at('Updated at');

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Exclusive);

        $form->text('title', 'Title');
        $form->text('zoom', 'Exclusive');
        $form->url('url', 'Url')->readOnly();
        $form->datetime('date', 'Date')->default(date('Y-m-d H:i:s'));
        $form->switch('published', 'Published');

        $form->saving(function (Form $form) {

            $id = ($form->model()->id) ? $form->model()->id : Exclusive::orderBy('id', 'DESC')->first()->id + 1;
            $form->url = Request::root()."/exclusivo/".Str::slug($form->title)."/".Hashids::encode($id);

        });

        return $form;
    }
}
