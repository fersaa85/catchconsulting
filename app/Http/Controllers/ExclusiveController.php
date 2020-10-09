<?php

namespace App\Http\Controllers;

use App\Exclusive;
use Illuminate\Http\Request;
use \Illuminate\Support\Facades\Response;
use Vinkla\Hashids\Facades\Hashids;


class ExclusiveController extends Controller
{
    public function __invoke($slug, $hash){
        $user_id = Hashids::decode($hash);

        if( is_array($user_id) and !empty($user_id)){

            $zoom = Exclusive::where('id', $user_id[0])->first();

            if($zoom and $zoom->zoom){
                return redirect( $zoom->zoom);
            }
        }

        return redirect('/');
    }
}
