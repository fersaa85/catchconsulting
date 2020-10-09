<?php

namespace App\Admin\Controllers;

use App\Suverymonkey;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Request;
use Illuminate\Support\Str as Str;
use Vinkla\Hashids\Facades\Hashids;


class SuverymonkeyController extends Controller
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
        $grid = new Grid(new Suverymonkey);

        $grid->id('Id');
        $grid->slug('Link');
        $grid->iframe('Iframe');
        $grid->published('Published');
        $grid->date('Date');

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
        $show = new Show(Suverymonkey::findOrFail($id));

        $show->id('Id');
        $show->iframe('url');
        $show->published('Published');
        $show->date('Date');

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Suverymonkey);

        $form->display('id', 'ID')->readOnly();
        $form->text('slug')->readOnly();
        $form->text('title', 'Titulo');
        $form->text('iframe', 'Url cuestionario');
        $form->switch('published', 'Publicado');
        $form->datetime('date', 'Fecha de vigencia')->default(date('Y-m-d H:i:s'));


        $form->saving(function (Form $form) {

            $id = ($form->model()->id) ? $form->model()->id : Suverymonkey::orderBy('id', 'DESC')->first()->id + 1;
            $form->slug = Request::root()."/encuesta/".Str::slug($form->title)."/".Hashids::encode($id);

        });



        return $form;
    }
}
