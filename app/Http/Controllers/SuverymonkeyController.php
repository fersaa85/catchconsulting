<?php

namespace App\Http\Controllers;

use App\Suverymonkey;
use Illuminate\Http\Request;
use \Illuminate\Support\Facades\Response;
use Vinkla\Hashids\Facades\Hashids;

class SuverymonkeyController extends Controller
{
    public function __invoke($slug, $hash){
        $user_id = Hashids::decode($hash);

        if( is_array($user_id) and !empty($user_id)){

            $Suverymonkey = Suverymonkey::where('id', $user_id[0])->first();

            if($Suverymonkey and $Suverymonkey->iframe){
                return redirect( $Suverymonkey->iframe);
            }
        }


        return redirect('/');
    }
}
