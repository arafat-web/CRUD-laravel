@extends('master')

@section('title')
    Student Management
@endsection
@section('content')
    <div class="container">
        @if ($message = Session::get('success'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                {{$message}}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @endif
        <div class="card border-0 shadow-sm m-4">
            <div class="card-body">
                <div class="controller row">
                    <div class="col-md-6 mb-4">
                        <a href="{{route('student.create')}}" class="btn btn-success">
                            <i class="fas fa-plus"></i> Add New User
                        </a>
                    </div>
                    <div class="col-md-6 ">
                        <input type="text" class="form-control w-50 ms-auto" id="search" onkeyup="tableFilter()" placeholder="Search for names.." title="Type in a name">
                    </div>

                </div>

                <table id="table" class="table table-light table-bordered table-striped table-hover">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>About</th>
                        <th>Image</th>
                        <th class="text-end">Action</th>
                    </tr>
                    @foreach($students as $student)
                        <tr>
                            <td>{{++$i}}</td>
                            <td>{{$student->name}}</td>
                            <td>{{$student->phone}}</td>
                            <td>{{$student->email}}</td>
                            <td>{{Str::limit($student->about, 20)}}</td>
                            <td>
                                <img src="{{asset($student->image)}}" width="50px" height="50px">
                            </td>
                            <td class="text-end">
                                <form action="{{ route('student.destroy',$student->id) }}" method="POST">
                                    <a class="btn btn-info" href="{{ route('student.show',$student->id) }}"><i class="fas fa-eye"></i></a>
                                    <a class="btn btn-warning" href="{{ route('student.edit', $student->id) }}"><i class="fas fa-edit"></i></a>
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger"><i class="fas fa-trash"></i></button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                </table>
                {!! $students->links() !!}
            </div>
        </div>
    </div>

    <script>

        function tableFilter() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("search");
            filter = input.value.toUpperCase();
            table = document.getElementById("table");
            tr = table.getElementsByTagName("tr");
            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[1];
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }

    </script>
@endsection
