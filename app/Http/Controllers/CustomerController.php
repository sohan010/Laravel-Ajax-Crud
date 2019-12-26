<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Customer;
use Carbon\Carbon;

class CustomerController extends Controller
{
    public function home()
    {
      $data = Customer::latest()->paginate(5);
      return view('customer.home',compact('data'));
    }

    public function add(Request $get)
    {
      $insert = Customer::insert([
          'name'=>$get->name,
          'phone'=>$get->phone,
          'email'=>$get->email,
          'city'=>$get->city,
          'created_at'=>Carbon::now(),
      ]);

        if($insert){
            return response()->json('success');
        }else{
            return response()->json('error');
        }
    }

    public function getdata()
    {
      $data = Customer::latest()->paginate(5);
        return view('customer.response',compact('data'));
    }

    public function viewdata(Request $get)
    {
        $id = $get->id;
        $customer = Customer::find($id);
        return $customer;
    }

    public function deletedata(Request $get)
    {
        $id = $get->id;
        $delete = Customer::where('id',$id)->delete();

        if($delete){
            return response()->json('success');
        }else{
            return response()->json('error');
        }

    }

    public function editurl(Request $get)
    {
        $id = $get->id;
        $data = Customer::find($id);
        return $data;
    }

    public function update(Request $get)
    {
      $update = Customer::where('id',$get->id)->update([
          'name'=>$get->name,
          'phone'=>$get->phone,
          'email'=>$get->email,
          'city'=>$get->city,
          'updated_at'=>Carbon::now()
      ]);

        if($update){
            return response()->json('success');
        }else{
            return response()->json('error');
        }
    }

    public function getpagination(){
        $data = Customer::latest()->paginate(5);
        return view('customer.paginate',compact('data'));
    }

}
