<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Exclusive extends Model
{
    public $table = 'exclusive';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id',
        'title',
        'zoom',
        'slug',
        'url',
        'published',
        'date',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [

    ];
}