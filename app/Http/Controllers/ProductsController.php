<?php

namespace App\Http\Controllers;
use App\Models\Products;
use App\Models\Service;
use Illuminate\Http\Request;

class ProductsController extends Controller
{
    public function all(){
        return response()->json([
           'products'=> Products::all(),
           
               
           
        ], 200);
    }
    public function byID(Request $request){
        return response()->json([
            'products'=> Products::where('category_id', $request->category_id)->get(),
        ],200);
    }
    public function service(){
        return response()->json([
           'service'=> Service::all(),
           
               
           
        ], 200);
    }
}
