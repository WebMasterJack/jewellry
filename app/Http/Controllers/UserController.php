<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
class UserController extends Controller
{
  
  
    public function registration(Request $request)
    {
        $rules = array(
            'name' => 'required',
            'phone' => array('required','unique:users','numeric','digits:11'),
            'email' => 'required',
            'status'=> "guest",
            'password' => 'required',
    );
        $messages = array(
            'name.required' => 'Заполните имя',
            'phone.required' => 'Заполните номер',
            'phone.unique' => 'Такой номер уже используется',
            'phone.numeric' => 'Используйте только цифры',
            'phone.digits' => 'Неправльный номер',
            'email.required' => 'Заполните email',
            'password.required' => 'Заполните пароль',
        );
        $validator = Validator::make($request->all(), $rules,$messages);

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
        $rules = array(
            'phone' => array('required','numeric','digits:11'),
            'password' => 'required',
    );
        $messages = array(
            'phone.required' => 'Заполните номер',
            'phone.numeric' => 'Используйте только цифры',
            'phone.digits' => 'Неправльный номер',
            'password.required' => 'Заполните пароль',
        );
        $validator = Validator::make($request->all(), $rules,$messages);

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
                         'answer' => "AUTH ------ OK",
                         'id'=> $user->id 
                    ],
                ]);
            }
        }

        return response()->json([
            'error' => [
                'code' => 401,
                'message' => 'Unauthorized',
                'errors' => [
                    'pp' => [
                        'Неправильный логин или пароль',
                    ]
                ],
            ]
        ], 401);
    }
    public function profile(Request $request){
        $profile = User::where('id', $request->id)->first();
        return response()->json([
            
            'profile'=> [
                'id'=>$profile->id,
                'name'=>$profile->name,
                'phone'=>$profile->phone,
                'email'=>$profile->email,
            ],
        ]);
    }
    
}
