<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\Dashboard;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;

use Calendar;
use App\Event;

class HomeController extends Controller
{
    public function index(Content $content)
    {
        return $content
            ->header('Dashboard')
            ->description('Description...')
            ->row(Dashboard::title())
            ->row(function (Row $row) {

                $row->column(4, function (Column $column) {
                    $column->append(Dashboard::environment());
                });

                $row->column(4, function (Column $column) {
                    $column->append(Dashboard::extensions());
                });

                $row->column(4, function (Column $column) {
                    $column->append(Dashboard::dependencies());
                });
            });
    }


    public function fullcallender(Content $content)
    {
        $events = [];
        $data = Event::all();
        if($data->count()) {
            foreach ($data as $key => $value) {

                $color='';
                $array=[];
                switch ($value->type){

                    case "evento":
                        $color = 'green';
                        $array = [
                            'color' => $color,
                            'url' => "admin/events/{$value->id}",
                        ];
                        break;

                    case "curso":
                        $color = 'orange';
                        $array = [
                            'color' => $color,
                            'url' => "admin/events/{$value->id}",
                        ];
                        break;

                    case "taller":
                        $color = 'purple';
                        $array = [
                            'color' => $color,
                            'url' => "admin/events/{$value->id}",
                        ];
                        break;
                    default:
                        $color = 'aqua';
                        $array = [
                            'color' => $color,
                            'url' => "admin/quotes-detail/{$value->contact_id}",
                        ];
                }

                $events[] = Calendar::event(
                    $value->title,
                    true,
                    new \DateTime($value->start_date),
                    new \DateTime($value->start_date),//new \DateTime($value->end_date.' +1 day'),
                    null,
                    // Add color and link on event
                    $array
                );
            }
        }

        Calendar::setOptions(['lang' => 'es']);
        $calendar = Calendar::addEvents($events);
        //return view('fullcalender', compact('calendar'));
        return $content
            ->header('Dashboard')
            ->description('Description...')
            //->row(Dashboard::title())
            ->row(function (Row $row) use ($calendar) {

                $row->column(12, function (Column $column) use ($calendar) {
                    $column->append(view('fullcalender')->with('calendar', $calendar));
                });

            });
    }

}
