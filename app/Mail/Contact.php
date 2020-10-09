<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class Contact extends Mailable
{
    use Queueable, SerializesModels;

    public $data;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($request)
    {
        $this->data = $request;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->markdown('emails.contact')
            ->from('no-replay@catchconsulting.com.mx')
            ->subject('Mail de contacto')
            ->with('name', $this->data->name ?? '')
            ->with('company', $this->data->company ?? '')
            ->with('email', $this->data->email ?? '')
            ->with('message', $this->data->message ?? '')
            ->with('phone', $this->data->phone ?? '');
    }

}
