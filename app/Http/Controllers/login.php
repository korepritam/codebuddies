<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\product;
use App\cart;
use DB;

class login extends Controller
{
    //

    public function  auth(Request $Request){



//  $cart=DB::select("select count(*) as 'number' from cart where user_id=1 and status=1");
//  $products=DB::select("select * from product");
//  $searches=DB::select("select * from search where user_id=1 order by search_id DESC");



//     	return view('home',['cart'=>$cart[0]->number,'products'=>$products,'searches'=>$searches]);
    }

    public function search(Request $Request){
    	// $ipaddress = '';
//         if (isset($_SERVER['HTTP_CLIENT_IP']))
//             $ipaddress = $_SERVER['HTTP_CLIENT_IP'];
//         else if(isset($_SERVER['HTTP_X_FORWARDED_FOR']))
//             $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
//         else if(isset($_SERVER['HTTP_X_FORWARDED']))
//             $ipaddress = $_SERVER['HTTP_X_FORWARDED'];
//         else if(isset($_SERVER['HTTP_FORWARDED_FOR']))
//             $ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];
//         else if(isset($_SERVER['HTTP_FORWARDED']))
//             $ipaddress = $_SERVER['HTTP_FORWARDED'];
//         else if(isset($_SERVER['REMOTE_ADDR']))
//             $ipaddress = $_SERVER['REMOTE_ADDR'];
//         else
//             $ipaddress = 'UNKNOWN';
//       return $ipaddress;
 $PublicIP = '2405:204:30a:ad8f:b0eb:69da:3132:c2f3'; 
 //  $output= $_SERVER['HTTP_REFERER'];
 // return $output;

 $json  = file_get_contents("http://ipinfo.io/$PublicIP/geo");
 $json  =  json_decode($json ,true);
 $country =  $json['country'];
 $region= $json['region'];
 $city = $json['city'];
 // return $city;
    	$query= $Request['query'];
    	DB::table('search')->insert(
                            ['search_str' => $query, 'user_id' => 1,'country'=>$country,'region'=>$region,'city'=>$city]
                        );
    	$cart=DB::select("select count(*) as 'number' from cart where user_id=1 and status=1");
    	$products=DB::select("select * from product where title='$query'");
 		$searches=[];
    	return view('home',['cart'=>$cart[0]->number,'products'=>$products,'searches'=>$searches]);
    }
}
	