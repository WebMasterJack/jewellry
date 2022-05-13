<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
class UserController extends Controller
{
    public function registration(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'phone' => 'required|unique:users|numeric|digits:11',
            'email' => 'required',
            'status'=> "guest",
            'password' => 'required',
        ]);

        if($validator->fails()) {
            return response()->json([
                'error' => [
                    'code' => 422,
                    'message' => 'Validation error',
                    'errors' => $validator->errors(),
                ]
            ], 422);
        }

        User::create($request->all());

        return response()->json()->setStatusCode(204);
    }

    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'phone' => 'required',
            'password' => 'required',
        ]);

        if($validator->fails()) {
            return response()->json([
                'error' => [
                    'code' => 422,
                    'message' => 'Validation error',
                    'errors' => $validator->errors(),
                ]
            ], 422);
        }

        if($user = User::where('phone', $request->phone)->first()) {
            if($request->password == $user->password) {
                return response()->json([
                    'data' => [
                         'answer' => "AUTH ------ OK", //$user->generateToken(),
                    ],
                ]);
            }
        }

        return response()->json([
            'error' => [
                'code' => 401,
                'message' => 'Unauthorized',
                'errors' => [
                    'phone' => [
                        'phone or password incorrect',
                    ]
                ],
            ]
        ], 401);
    }
}
