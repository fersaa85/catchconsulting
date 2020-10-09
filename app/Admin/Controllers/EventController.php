<?php

namespace App\Admin\Controllers;

use App\Event;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Row;
use App\Contact;
class EventController extends Controller
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

    public function quotes(Content $content)
    {
        return $content
            ->header('Index')
            ->description('description')
            ->row(function (Row $row)  {

                $row->column(12, function (Column $column) {
                    $column->append(view('quotes')
                        ->with('quotes',
                            Contact::where('type', '=', 'cita')
                            ->orderBy('id', 'desc')
                            ->paginate())
                    );
                });

            });
    }

    public function quotesDetail(Content $content, $id)
    {
        return $content
            ->header('Index')
            ->description('description')
            ->row(function (Row $row)  use ($id) {

                $row->column(12, function (Column $column) use ($id) {
                    $column->append(view('quotes-detail')
                        ->with('quote',
                            Contact::findOrFail($id))
                    );
                });

            });
    }

    public function quotesDelete(Content $content, $id){
        $contact = Contact::find($id);
        $delete = Event::where('contact_id', '=', $id)->first();
        $contact->delete();
        $delete->delete();

        return back();
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
    protected function grid($type = '')
    {
        $grid = new Grid(new Event);
        if($type == 'cita'){
            $grid->model()->where('type', '=', 'cita');
        }
        $grid->model()->where('type', '<>', 'cita');

        $grid->id('Id');
        $grid->title('Eventos');
        $grid->start_date('Fecha de inicio');
        $grid->end_date('Fecha de fin');
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
        $show = new Show(Event::findOrFail($id));

        $show->id('Id');
        $show->title('Title');
        $show->start_date('Start date');
        $show->end_date('End date');
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
        $form = new Form(new Event);

        $form->text('title', 'Title');
        $form->date('start_date', 'Start date')->default(date('Y-m-d'));
        $form->date('end_date', 'End date')->default(date('Y-m-d'));
        $types = [
            'cita'  => 'Cita',
            'evento' => 'Evento',
            'taller' => 'Taller',
            'curso' => 'curso',
        ];
        $form->select('type', 'Tipo')->options($types);
        $form->text('start_time', 'Hora inicio HH:MM');
        $form->text('end_time', 'Hora de fin HH::MM');
        return $form;
    }
}
