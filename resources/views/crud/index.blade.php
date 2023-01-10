@extends('crud.master')

@section('title')
    User Management
@endsection
@section('content')
    <div class="container">
        @if ($message = Session::get('success'))
            <div class="alert alert-sucess alert-dismissible fade show" role="alert">
                {{$message}}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @endif
        <div class="card border-0 shadow-sm">
            <div class="card-body">
                <div class="controller row">
                    <div class="col-md-6 mb-4">
                        <a href="{{route('create')}}" class="btn btn-success">
                            Add New User
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
                        <th>Action</th>
                    </tr>
                    @foreach($infos as $info)
                    <tr>
                        <td>{{++$i}}</td>
                        <td>{{$info->name}}</td>
                        <td>{{$info->phone}}</td>
                        <td>{{$info->email}}</td>
                        <td>{{$info->about}}</td>
                        <td>
                            <img src="{{asset($info->image)}}" width="50px" height="50px">
                        </td>
                        <td>
                            <form action="{{ route('destroy',$info->id) }}" method="POST">
                                <a class="btn btn-warning" href="{{ route('edit',$info->id) }}">Edit</a>
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger">Delete</button>
                            </form>
                        </td>
                    </tr>
                    @endforeach
                </table>
                {!! $infos->links() !!}
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
