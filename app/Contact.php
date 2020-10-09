<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    public $table = 'contact';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'company',
        'email',
        'message',
        'phone',
        'schedule',
        'date',
        'state',
        'remote',
        'type',
        'start_time',
        'end_time',
    ];
}
