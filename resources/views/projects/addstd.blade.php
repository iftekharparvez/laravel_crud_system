@extends('app')

@section('content')

<div class="container mt-5">
    <h2>Add Student Information</h2>
    <form method="POST" action="/add-student">
        @csrf
        <div class="form-row">
            <div class="col-md-6 mb-3">
                <label for="firstName">First Name</label>
                <input name="firstname" type="text" class="form-control" id="firstName" placeholder="Enter your first name" required>
            </div>
            <div class="col-md-6 mb-3">
                <label for="lastName">Last Name</label>
                <input name="lastname" type="text" class="form-control" id="lastName" placeholder="Enter your last name" required>
            </div>
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <input name="email" type="email" class="form-control" id="email" placeholder="Enter your email" required>
        </div>
        <br>
        <div class="form-group">
            <label for="address">Address</label>
            <input name="address" type="text" class="form-control" id="address" placeholder="Enter your address" required>
        </div>
        <br>
        <div class="form-group">
            <label for="phone">Phone</label>
            <input name="phone" type="tel" class="form-control" id="phone" placeholder="Enter your phone number" required>
        </div>
        <br>
        <button class="btn btn-primary" type="submit">Submit</button>
    </form>
</div>

@endsection

