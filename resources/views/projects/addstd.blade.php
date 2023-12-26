@include('projects/header')

<div class="container mt-5">
    <h2>Add Student Information</h2>
    <form method="POST" action="/add-student" enctype="multipart/form-data">
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
        <div class="form-group">
            <label for="gender">Gender</label>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="gender" id="male" value="male" required>
                <label class="form-check-label" for="male">
                    Male
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="gender" id="female" value="female" required>
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
                    <option value="class1">Class 1</option>
                    <option value="class2">Class 2</option>
                    <option value="class3">Class 3</option>
                    <option value="class4">Class 4</option>
                    <option value="class5">Class 5</option>
                    <option value="class6">Class 6</option>
                    <option value="class7">Class 7</option>
                    <option value="class8">Class 8</option>
                    <option value="class9">Class 9</option>
                    <option value="class10">Class 10</option>
                </select>
            </div>
        </div>
        <br>

        <div class="form-check">
            <input class="form-check-input" type="checkbox" id="checkbox" name="accepted_terms" value="1" required>
            <label class="form-check-label" for="checkbox">
                I agree to the terms and conditions
            </label>
        </div>
        <br>
        <button class="btn btn-primary" type="submit">Submit</button>
        <br>
        <br>
    </form>
</div>
@include('projects/footer')


