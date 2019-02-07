<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Jenssegers\Agent\Agent;

class DetectDevice extends Controller
{




  //function to get the the type of device from wich the user is loged in 
    public function getDeviceType(Request $request)
    {

        $agent = new Agent();
       // $device=$agent->device();

        $platform = $agent->platform();
        $browser = $agent->browser();
        
        if($agent->isDesktop()){
            $phone="true";        }
            return [$platform,$browser,$phone];
    }
// =================  Redirect ==============
    public function advt(){
        return view('advt');
    }
   public function from($id){
       if($id==1){
           return "facebook";
       }
       if($id==2){
           return "insta";
       }
   }
}
