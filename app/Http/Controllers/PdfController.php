<?php

namespace App\Http\Controllers;

use App\Pdf;
use Illuminate\Http\Request;
use \Illuminate\Support\Facades\Response;

class PdfController extends Controller
{
    public function index(){
        return Response::json(Pdf::where('published', 1)->get(), 200);
    }

    public function show($id){
        return Response::json(Pdf::where('published', 1)->find($id), 200);
    }
}
