@extends('crud.master')

@section('title')
    User Management
@endsection
@section('content')
    <div class="container">
        <div class="card border-0 shadow-sm">
            <div class="card-body">
                <div class="controller row">
                    <div class="col-md-6 mb-4">
                        <a href="{{route('create')}}" class="btn btn-success">
                            Add New User
                        </a>
                    </div>
                    <div class="col-md-6 ">
                        <input type="text" class="form-control w-50 ms-auto" id="myInput" onkeyup="tableFilter()" placeholder="Search for names.." title="Type in a name">
                    </div>

                </div>

                <table class="table table-light table-hover">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>About</th>
                        <th>Image</th>
                        <th>Action</th>
                    </tr>

                    @foreach($users as $user)
                    <tr>
                        <td>{{++$i}}</td>
                        <td>{{$user->name}}</td>
                        <td>{{$user->phone}}</td>
                        <td>{{$user->email}}</td>
                        <td>{{$user->about}}</td>
                        <td>{{$user->image}}</td>
                        <td>
                            <form action="{{ route('products.destroy',$user->id) }}" method="POST">
                                <a class="btn btn-warning" href="{{ route('products.edit',$user->id) }}">Edit</a>

                                @csrf
                                @method('DELETE')

                                <button type="submit" class="btn btn-danger">Delete</button>
                            </form>
                        </td>
                    </tr>
                    @endforeach
                </table>
            </div>
        </div>
    </div>

<script>

    function tableFilter() {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable");
        tr = table.getElementsByTagName("tr");
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[0];
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
