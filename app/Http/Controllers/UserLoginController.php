<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Socialite;
use App\User;
use DB;

class UserLoginController extends Controller
{


    public function register(Request $request){

        $user= new User;
        $user->name=$request['Name'];
        $user->address=$request['address'];
        $user->password=$request['password'];
        $user->age=$request['age'];
        $user->email=$request['email'];
        $user->save();
        return view('login');
    }

    public function login(Request $request){
       $email=$request['email'];
       $password=$request['password'];

       //$user =User::find(1);
       
       $user = DB::table('user')->where('email', $email )->first();       
       if(isset($user)){

           
 $cart=DB::select("select count(*) as 'number' from cart where user_id=1 and status=1");
 $products=DB::select("select * from product");
 $searches=DB::select("select * from search where user_id=1 order by search_id DESC");



    	// return view('home',['cart'=>$cart[0]->number,'products'=>$products,'searches'=>$searches]);
  
           session(['id'=>$user->user_id]);
           session(['email'=>$user->email]);
           session(['name'=>$user->name]);
           session(['age'=>$user->age]);
           session(['address'=>$user->address]);
           return view('home',['cart'=>$cart[0]->number,'products'=>$products,'searches'=>$searches,'user'=>$user]);
       }
       else{
           return view('login');
       }
    }

       public function logout(Request $request)
       {
           if(session('id')){
            $request->session()->flush();
           return view('login');
           }
       }
        

 

}
