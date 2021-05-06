<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pdf extends Model
{

    public $table = 'pdf';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'slug',
        'name',
        'file',
        'published',
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
