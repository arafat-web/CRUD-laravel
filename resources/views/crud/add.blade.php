@extends('crud.master')

@section('title')
    Add New User
@endsection
@section('content')
    <div class="container">
        <div class="body border-0 shadow-sm p-4">
            <div class="card-body m-auto" style="width: 500px;">
                <h4 class="text-black mb-3 pb-2 border-bottom text-center">Enter Information</h4>
                <form action="{{route('store')}}" method="post" enctype="multipart/form-data">
                    <div class="mb-3">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="Enter Full Name">
                    </div>
                    <div class="mb-3">
                        <label for="phone" class="form-label">Phone</label>
                        <input type="tel" class="form-control" id="phone" name="phone" placeholder="Enter Phone">
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email">
                    </div>
                    <div class="mb-3">
                        <label for="about" class="form-label">About</label>
                        <textarea class="form-control" rows="5" cols="10" id="about" name="about" placeholder="Enter About"></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="image" class="form-label">Image</label>
                        <input type="file" class="form-control" id="image" name="image">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                    <button type="reset" class="btn btn-warning">Reset</button>
                    <a class="btn btn-info" href="{{route('index')}}">Back</a>
                </form>
            </div>
        </div>
    </div>

@endsection
