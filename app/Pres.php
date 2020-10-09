<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pres extends Model
{
    public $table = 'press';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'medium',
        'title',
        'web',
        'web_url',
        'printed',
        'printed_image',
        'published',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [

    ];
}
