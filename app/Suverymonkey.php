<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Suverymonkey extends Model
{
    public $table = 'suverymonkey';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id',
        'iframe',
        'title',
        'web',
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