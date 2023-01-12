<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Support\Facades\File;
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
        $students = Student::latest()->paginate(10);

        return view('student.index', compact('students'))
            ->with('i', (request()->input('page', 1) - 1) * 10);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('student.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'phone' => 'required',
            'email' => 'required',
            'about' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg',
        ]);

        // Storing the image
        $path = $request->file('image');
        $image = rand() . '.' . $path->getClientOriginalExtension();
        $path->move(public_path('images/'), $image);

        Student::create([
            'name' => $request->name,
            'phone' => $request->phone,
            'email' => $request->email,
            'about' => $request->about,
            'image' => 'images/' . $image,
        ]);

        return redirect()->route('student.index')
            ->with('success', 'Student added successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\Student $student
     * @return \Illuminate\Http\Response
     */
    public function show(Student $student)
    {
        return view('student.show',compact('student'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Models\Student $student
     * @return \Illuminate\Http\Response
     */
    public function edit(Student $student)
    {
        return view('student.edit', compact('student'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Student $student
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Student $student)
    {
        $request->validate([
            'name' => 'required',
            'phone' => 'required',
            'email' => 'required',
            'about' => 'required',
            'image' => 'image|mimes:jpeg,png,jpg',
        ]);

        // Storing the image
        if ($request->hasFile('image')) {
            if (File::exists($student->image)) {
                unlink($student->image);
            }
            $path = $request->file('image');
            $imageName = rand() . '.' . $path->getClientOriginalExtension();
            $image ='images/' . $imageName;
            $path->move(public_path('images/'), $imageName);
        } else {
            $image = $student->image;
        }


//        if(isset($request->file('image'))){
//            $path = $request->file('image');
//            $image = rand() . '.' . $path->getClientOriginalExtension();
//            $path->move(public_path('images/'), $image);
//        }


        $student->update([
            'name' => $request->name,
            'phone' => $request->phone,
            'email' => $request->email,
            'about' => $request->about,
            'image' => $image,
        ]);

        return redirect()->route('student.index')
            ->with('success', 'Student added successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\Student $student
     * @return \Illuminate\Http\Response
     */
    public function destroy(Student $student)
    {
        $student->delete();

        return redirect()->route('student.index')
            ->with('success', 'Student deleted successfully');
    }
}
