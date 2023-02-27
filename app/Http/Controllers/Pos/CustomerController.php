<?php

namespace App\Http\Controllers\Pos;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\InvoicePayment;
use Auth;
use Illuminate\Support\Carbon;
use Image;

class CustomerController extends Controller
{
    public function CustomerAll(){

        $customers = Customer::latest()->get();
        return view('backend.customer.customer_all',compact('customers'));
    }

    public function CustomerAdd(){

        return view('backend.customer.customer_add'); 
    }

    public function CustomerStore(Request $request){
        $image = $request->file('customer_image');
            $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension(); // 764587.jpg
            Image::make($image)->resize(200,200)->save('upload/customer_image/'. $name_gen);
            $save_url = 'upload/customer_image/'.$name_gen;

            Customer::insert([
                 'name' => $request->name,
                 'mobile_no' => $request->mobile_no,
                 'email' => $request->email,
                 'address' => $request->address,

                 'customer_image' => $save_url,
                 'created_by' => Auth::user()->id,
                 'created_at' => Carbon::now(),
                 
            

            ]);
            $notification = array(
                'message' => 'New Customer Inserted Successfully',
                'alert-type' => 'success'
            );
    
            return redirect()->route('customer.all')->with($notification);
        
    }

    public function CustomerEdit($id){

        $customeredit = Customer::findOrFail($id);
        return view('backend.customer.customer_edit',compact('customeredit'));
    }

    public function CustomerUpdate(Request $request, $id){

       if($request->file('customer_image')){
        $image = $request->file('customer_image');
        $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension(); // 764587.jpg
        Image::make($image)->resize(200,200)->save('upload/customer_image/'. $name_gen);
        $save_url = 'upload/customer_image/'.$name_gen;

        Customer::findOrFail($id)->update([
             'name' => $request->name,
             'mobile_no' => $request->mobile_no,
             'email' => $request->email,
             'address' => $request->address,

             'customer_image' => $save_url,
             'updated_by' => Auth::user()->id,
             'updated_at' => Carbon::now(),
             
        ]);
        $notification = array(
            'message' => ' Customer Info Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('customer.all')->with($notification);

       } else{
                Customer::findOrFail($id)->update([
                    'name' => $request->name,
                    'mobile_no' => $request->mobile_no,
                    'email' => $request->email,
                    'address' => $request->address,
                    'updated_by' => Auth::user()->id,
                    'updated_at' => Carbon::now(),
                    
            ]);
            $notification = array(
                'message' => ' Customer Info Updated WithOut Image',
                'alert-type' => 'success'
            );

            return redirect()->route('customer.all')->with($notification);
       }
    }

    public function CustomerDelete($id){
      
            $customers = Customer::findOrFail($id);
            $img = $customers->customer_image;
            unlink($img);

            Customer::findOrFail($id)->delete();
            $notification = array(
                'message' => 'Customer Successfully Deleted',
                'alert-type' => 'info'
            );
    
            return redirect()->route('customer.all')->with($notification);

    }

    public function CreditCustomer(){

        $allData = InvoicePayment::whereIn('paid_status',['full_due','partial_paid'])->get();
        return view('backend.customer.customer_credit',compact('allData'));
    }

    public function CreditCustomerPrintPdf(){
        
        $allData = InvoicePayment::whereIn('paid_status',['full_due','partial_paid'])->get();
        return view('backend.pdf.customer_credit_pdf',compact('allData'));
    }

    public function CustomerEditInvoice($invoice_id){

        $payment = InvoicePayment::where('invoice_id',$invoice_id)->first();
        return view('backend.customer.edit_customer_invoice',compact('payment'));
        
    }
}
