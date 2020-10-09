<?php

namespace App\Http\Controllers;

use App\Pres;
use Illuminate\Http\Request;
use \Illuminate\Support\Facades\Response;

class PressController extends Controller
{
    public function index(){

        return Response::json(Pres::where('published', 1)->get(), 200);
    }
}
