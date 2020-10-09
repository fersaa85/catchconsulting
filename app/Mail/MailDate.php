<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class MailDate extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($request, $date)
    {
        $this->data = $request;
        $this->date = $date;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->markdown('emails.date')
            ->from('no-replay@catchconsulting.com.mx')
            ->subject('Cita agendada')
            ->with('name', $this->data->name ?? '')
            ->with('company', $this->data->company ?? '')
            ->with('email', $this->data->email ?? '')
            ->with('message', $this->data->message ?? '')
            ->with('phone', $this->data->phone ?? '')
            ->with('schedule', $this->data->schedule ?? '')
            ->with('date', $this->date ?? '');
    }
}
