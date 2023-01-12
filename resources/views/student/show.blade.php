@extends('master')

@section('title')
    {{$student->name}}'s Details
@endsection
@section('content')
    <div class="row m-4">
        <div class="col-lg-4 mx-auto">
            <!-- Component -->
            <div class="card shadow-sm border-0">
                <div class="d-flex justify-content-center">
                    <img class="mt-4 rounded-circle" width="250px" height="250px" alt="..." src="{{asset($student->image)}}">
                </div>
                <div class="card-body">
                    <div class="text-center my-6">
                        <!-- Title -->
                        <h3 class="d-block mb-0">{{$student->name}}</h3>
                        <!-- Subtitle -->
                        <span class="d-block text-sm text-muted">{{$student->phone}}</span>
                        <span class="d-block text-sm text-muted">{{$student->email}}</span>
                        <style>
                            .upper::first-letter{
                                text-transform: uppercase;
                            }
                        </style>
                        <p class="upper pt-2" style="text-align: justify;">{{$student->about}}</p>
                    </div>
                    <!-- Stats -->
                    <div class="d-block">

                        <div class="row">
                            <div class="col-12 card border-0 text-center">
                                <form action="{{ route('student.destroy',$student->id) }}" method="POST">
                                    <a class="btn btn-success" href="{{ route('student.index') }}"><i
                                            class="fas fa-home"></i></a>
                                    <a class="btn btn-warning" href="{{ route('student.edit', $student->id) }}"><i
                                            class="fas fa-edit"></i></a>
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger"><i class="fas fa-trash"></i></button>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
