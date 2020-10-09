<?php

namespace App\Http\Controllers;

use App\Zoom;
use Illuminate\Http\Request;
use \Illuminate\Support\Facades\Response;
use Vinkla\Hashids\Facades\Hashids;


class ZoomController extends Controller
{
    public function __invoke($slug, $hash){
        $user_id = Hashids::decode($hash);

        if( is_array($user_id) and !empty($user_id)){

            $zoom = Zoom::where('id', $user_id[0])->first();

            if($zoom and $zoom->zoom){
                return redirect( $zoom->zoom);
            }
        }

        return redirect('/');
    }
}
