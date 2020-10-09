<?php

namespace App\Http\Controllers;

use App\Blog;
use Illuminate\Http\Request;
use \Illuminate\Support\Facades\Response;

class BlogController extends Controller
{
    public function index(){
        return Response::json(Blog::all(), 200);
    }

    public function show($id){
        return Response::json(Blog::find($id), 200);
    }
}
