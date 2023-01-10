<?php

namespace App\Http\Controllers;

use App\Models\Info;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */


    public function index()
    {
        $infos = Info::latest()->simplePaginate(5);
        return view('crud.index', compact('infos'))
            ->with('i', (request()->input('page', 1) - 1) * 5);;

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('crud.add');
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

        Info::create([
            'name' => $request->name,
            'phone' => $request->phone,
            'email' => $request->email,
            'about' => $request->about,
            'image' => 'images/' . $image,
        ]);

        return redirect()->route('index')
            ->with('success','User added successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
