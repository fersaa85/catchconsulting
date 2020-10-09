<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    protected $fillable = ['title',
        'start_date',
        'end_date',
        'type',
        'start_time',
        'end_time',
        'type',
        'start_time',
        'end_time',
        'remote',
        'state',
        'contact_id',
    ];
}
