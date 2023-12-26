@extends('app')

@section('content')
<div class="container mt-5">
    <h2>Edit Student Information</h2>
    <form method="post" action="/edit-student/{{$studentdata->id}}/edit">
        @csrf
        @method('PUT')
        <div class="form-row">
            <div class="col-md-6 mb-3">
                <label for="firstName">First Name</label>
                <input value="{{$studentdata->firstname}}" name="firstname" type="text" class="form-control" id="firstName" placeholder="Enter your first name" required>
            </div>
            <div class="col-md-6 mb-3">
                <label for="lastName">Last Name</label>
                <input value="{{$studentdata->lastname}}" name="lastname" type="text" class="form-control" id="lastName" placeholder="Enter your last name" required>
            </div>
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <input value="{{$studentdata->email}}" name="email" type="email" class="form-control" id="email" placeholder="Enter your email" required>
        </div>
        <br>
        <div class="form-group">
            <label for="address">Address</label>
            <input value="{{$studentdata->address}}" name="address" type="text" class="form-control" id="address" placeholder="Enter your address" required>
        </div>
        <br>
        <div class="form-group">
            <label for="phone">Phone</label>
            <input value="{{$studentdata->phone}}" name="phone" type="tel" class="form-control" id="phone" placeholder="Enter your phone number" required>
        </div>
        <br>

        <div class="form-group">
            <label for="gender">Gender</label>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="gender" id="male" value="male" {{ $studentdata->gender == 'male' ? 'checked' : '' }} required>
                <label class="form-check-label" for="male">
                    Male
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="gender" id="female" value="female" {{ $studentdata->gender == 'female' ? 'checked' : '' }} required>
                <label class="form-check-label" for="female">
                    Female
                </label>
            </div>
        </div>
        <br>
         <div class="form-row">
            <div class="col-md-6">
                <label for="class">Class</label>
                <select name="selectclass" class="form-control" id="class" required>

                @foreach(['class1', 'class2', 'class3', 'class4', 'class5', 'class6', 'class7', 'class8', 'class9', 'class10'] as $class)
                    
                    <option value="{{ $class }}" {{ $studentdata->selectclass == $class ? 'selected' : '' }}>{{ $class }}</option>
                @endforeach

                </select>
            </div>
        </div>
        <br>


        <button class="btn btn-primary" type="submit">Update</button>
        <br><br>
    </form>
</div>
@endsection
