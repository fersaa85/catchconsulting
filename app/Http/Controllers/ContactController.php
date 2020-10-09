<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \Illuminate\Support\Facades\Response;
use App\Mail\Contact;
use \Illuminate\Support\Facades\Mail;
use App\Contact as ModelContact;
use App\Mail\MailDate;
use App\Event;

class ContactController extends Controller
{
    public function contact(Request $request){

        ModelContact::insert([
            'name' => $request->name,
            'company' => $request->company,
            'email' => $request->email,
            'message' => $request->message,
            'phone' => $request->phone,
        ]);

        Mail::to("informacion@catchconsulting.com.mx", 'Catch Consulting')
            ->send(new Contact($request));

        return Response::json(['data'=>true], 200);
    }

    public function addDate(Request $request){

        $date = $request->date;


        $limit = Event::where('start_date', '=', $date)
            ->where('type','=', 'cita')
            ->where('start_time', '=', $request->schedule)
            ->get()->count();


        if($limit > 3){
            return Response::json([], 401);
        }else{
            $contact = ModelContact::create([
                'name' => $request->name,
                'company' => $request->company,
                'email' => $request->email,
                'message' => $request->message,
                'phone' => $request->phone,
                'schedule' => $request->schedule,
                'date' => "{$date} 00:00:00",
                'type' => 'cita',
                'start_time' => $request->schedule,
                'end_time' => '',
                'remote' => $request->remote? $request->remote : 0,
                'state'  => $request->state,
            ]);


            Event::create([
                'title' => $request->name,
                'start_date' => $date,
                'end_date' => $date,
                'type' => 'cita',
                'start_time' => $request->schedule,
                'end_time' => '',
                'remote' => $request->remote? $request->remote : 0,
                'state'  => $request->state,
                'contact_id' => $contact->id,
            ]);


            Mail::to("informacion@catchconsulting.com.mx", 'Cita agendada')
                ->send(new MailDate($request, $date));

            return Response::json($contact, 200);
        }



    }


}
