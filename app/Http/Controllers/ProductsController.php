<?php

namespace App\Http\Controllers;
use App\Models\Products;
use Illuminate\Http\Request;

class ProductsController extends Controller
{
    public function all(){
        return response()->json([
           'products'=> Products::all(),
           
               
           
        ], 200);
    }
}
