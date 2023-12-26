@extends('app')
@section('content')

<div class="container mt-5">
    <div class="card">
        <div class="card-header">
            <h3>User Profile</h3>
        </div>
        <div class="card-body">
            <ul class="list-group">

                <li class="list-group-item"><strong>First Name:</strong> {{$single->firstname}}</li>
                <li class="list-group-item"><strong>Last Name:</strong> {{$single->lastname}}</li>
                <li class="list-group-item"><strong>Email Address:</strong> {{$single->email}}</li>
                <li class="list-group-item"><strong>Address:</strong>{{$single->address}}</li>
                <li class="list-group-item"><strong>Phone Number:</strong> {{$single->phone}}</li>
                <li class="list-group-item"><strong>Class:</strong>{{$single->gender}}</li>
                <li class="list-group-item"><strong>Gender:</strong>{{$single->selectclass}}</li>
            </ul>
        </div>
    </div>
</div>

@endsection