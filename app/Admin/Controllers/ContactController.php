<?php

namespace App\Admin\Controllers;

use App\Contact;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class ContactController extends Controller
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
        $grid = new Grid(new Contact);

        $grid->id('Id');
        $grid->name('Nombre');
        $grid->company('Compañia');
        $grid->email('Email');
        $grid->message('Mensaje');
        $grid->created_at('Created at');
        $grid->updated_at('Updated at');
        //$grid->schedule('Schedule');
        //$grid->date('Date');

        $grid->actions(function ($actions) {
            $actions->disableDelete();
            $actions->disableEdit();
            //$actions->disableView();
        });

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
        $show = new Show(Contact::findOrFail($id));

        $show->id('Id');
        $show->name('Name');
        $show->company('Company');
        $show->email('Email');
        $show->message('Message');
        $show->created_at('Created at');
        $show->updated_at('Updated at');
        $show->schedule('Schedule');
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
        $form = new Form(new Contact);

        $form->text('name', 'Name');
        $form->text('company', 'Company');
        $form->email('email', 'Email');
        $form->textarea('message', 'Message');
        $form->text('schedule', 'Schedule');
        $form->datetime('date', 'Date')->default(date('Y-m-d H:i:s'));

        return $form;
    }
}
