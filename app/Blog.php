<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'title',
        'slug',
        'files',
        'description',
        'image',
        'published_at',
        'published',
        'phone',
        'keywords',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [

    ];

    public function setFilesAttribute($files)
    {
        if (is_array($files)) {
            $this->attributes['files'] = json_encode($files);
        }
    }

    public function getFilesAttribute($files)
    {
        return json_decode($files, true);
    }
}
