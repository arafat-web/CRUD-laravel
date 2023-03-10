@extends('master')

@section('title')
    Update User
@endsection
@section('content')
    <div class="container">
        @if ($errors->any())
            <div class="alert alert-danger">
                <strong>Whoops!</strong> There were some problems with your input.<br><br>
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
            <div class="card border-0 shadow-sm p-4 m-4 ">
                <div class="card-body m-auto" style="width: 500px;">
                    <h4 class="text-black mb-3 pb-2 border-bottom text-center">Update Information</h4>
                    <form action="{{route('student.update', $student->id)}}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="mb-3">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" value="{{$student->name}}" class="form-control" id="name" name="name" placeholder="Enter Full Name">
                        </div>
                        <div class="mb-3">
                            <label for="phone" class="form-label">Phone</label>
                            <input type="tel" value="{{$student->phone}}" class="form-control" id="phone" name="phone" placeholder="Enter Phone">
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" value="{{$student->email}}" class="form-control" id="email" name="email" placeholder="Enter Email">
                        </div>
                        <div class="mb-3">
                            <label for="about" class="form-label">About</label>
                            <textarea class="form-control" rows="5" cols="10" id="about" name="about"
                                      placeholder="Enter About">{{$student->about}}</textarea>
                        </div>
                        <div class="mb-3">
                            <label for="image" class="form-label">Image</label>
                            <input type="file" class="form-control" id="image" name="image">
                            <img src="{{asset($student->image)}}" class="d-block mt-3" width="200px">
                            <input type="hidden" value="{{$student->image}}" name="imageValue">
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <button type="reset" class="btn btn-warning">Reset</button>
                        <a class="btn btn-info" href="{{route('student.index')}}">Back</a>
                    </form>
                </div>
            </div>
    </div>

@endsection
