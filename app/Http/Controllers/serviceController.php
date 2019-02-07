<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class serviceController extends Controller
{
    //
    public function store($client_id,$product_id){
    	$frequency=DB::select('SELECT frequency FROM visits_from where client_id=1 ORDER BY v_id DESC LIMIT 1')[0]->frequency;

    	
    	DB::table('visits_from')->insert(
                            ['product_id' => $product_id,'client_id'=>$client_id,'frequency'=>$frequency++ ,'user_id' => 1,]
                        );
    	$url=DB::select('select website_url from affiliated_client where client_id='.$client_id)[0]->website_url;
        $product=DB::select('select title from product where product_id='.$product_id)[0]->title;
    	return 'Thank you! for visiting <br><br>You are visited from <h4>'.$url.'</h4><h3>Product Name:'.$product.'</h3>';
    	
    }

    public function cart(Request $Request){
    	$cart=$Request->input('q');
    	$id=$Request->input('r');

    	DB::table('cart')->insert(
                            ['product_id' => $id,'status'=>1,'user_id' => 1,]
                        );
    	$cart=$cart+1;
    	return $cart;
    }

    public function getdevice(Request $req){
        $x=$req->input('q');
        DB::table('interaction')->insert(
            ['user_id' => 1,'product_id'=>1,'action' => "logged in", 'device'=>$x]
        );
    }

    public function datagenerate(Request $request){
        $arr=array();
        $user=DB::select('select * from user where user_id=1');
        $arr['user']=$user;

        $cart=DB::select('select COUNT(*) from cart where user_id=1 and status=1');
        $arr['cart']=$cart;

        $search=DB::select('select * from search  where user_id=1');
        $arr['search']=$search;

        $interaction=DB::select('select * from search  where user_id=1');
        $arr['interaction']=$interaction;

        $affiliated=DB::select('select * from affiliated_client  where user_id=1');
        if(isset($affiliated))
        {
            $arr['affiliated']='yes';
        }else
        {$arr['affiliated']='no';}

        return $arr;

    }
}
