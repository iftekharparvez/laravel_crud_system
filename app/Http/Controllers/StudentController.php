<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //

        $data = Student::oldest()->get();
        return view('index', ['data' => $data]);
        
    }

    public function about()
    {
        return view('projects.about');
        
    }
    public function contact()
    {
       
        return view('projects.contact');
        
    }





    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('projects.addstd');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
    
        request()->validate([
            'firstname' => 'required',
            'lastname' => 'required',
            'email' => 'required',
            'address' => 'required',
            'phone' => 'required',
        ]);
        $student = new Student();
        $student->firstname = request('firstname');
        $student->lastname = request('lastname');
        $student->email = request('email');
        $student->address = request('address');
        $student->phone = request('phone');
        
        $student->save();

        return redirect('/');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function show(Student $student)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function edit(Student $student, $id)
    {
        $student = Student::findOrFail($id);
        return view('projects.edit', ['studentdata' => $student]);
    }
    
    public function update(Request $request, Student $student, $id)
    {

        request()->validate([
            'firstname' => 'required',
            'lastname' => 'required',
            'email' => 'required',
            'address' => 'required',
            'phone' => 'required',
        ]);

        $student = Student::findOrFail($id);

        $student->firstname = request(key: 'firstname');
        $student->lastname = request(key: 'lastname');
        $student->email = request(key: 'email');
        $student->address = request(key: 'address');
        $student->phone = request(key: 'phone');
        
        $student->update();

        return redirect('/');
    }
    

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function destroy(Student $student, $id)
    {
        //
        $student = Student::findOrFail($id);
        $student->delete();

        return redirect('/');
    }
}
