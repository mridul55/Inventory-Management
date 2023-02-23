<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Contact;
use Illuminate\Support\Carbon;

class ContactController extends Controller
{
    public function Contact(){

     return view('frontend.contact');

    }
    public function StoreMessage(Request $request){

        Contact::insert([
            'name' => $request-> name,
            'email' => $request-> email,
            'subject' => $request-> subject,
            'phone' => $request-> phone,
            'message' => $request-> message,
            'created_at' => Carbon::now(),
        ]);

        $notification = array(
            'message' => 'Thank You Your Message Successfully Sent',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }

    public function ContactMessage(){

        $contact = Contact::latest()->get();
        return view('admin.contact.all_contact', compact('contact'));
    }

    public function DeleteMessage($id){

        Contact::findOrFail($id)->delete();

        $notification = array(
            'message' => ' Message Successfully Deleted',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    }

    
}
