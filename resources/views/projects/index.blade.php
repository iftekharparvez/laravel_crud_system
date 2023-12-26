@include('projects/header')
  <div class="container mt-3">
    <h2>Student data</h2>
    <!-- Table -->
    <table class="table table-striped">
      <thead>
        <tr>
          <th>ID</th>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Email Address</th>
          <th>Address</th>
          <th>Phone No</th>
        </tr>
      </thead>

      @foreach($data as $singledata)
      <tbody>
        <tr>
          <td>{{$singledata->id}}</td>
          <td>{{$singledata->firstname}} </td>
          <td>{{$singledata->lastname}} </td>
          <td>{{$singledata->email}}</td>
          <td>{{$singledata->address}}</td>
          <td>{{$singledata->phone}}</td>
          <td>
            <!-- view Button -->
            <button type="button" class="btn btn-success btn-sm">
              <a  style="color:#fff;" href="/single-student/{{$singledata->id}}">View</a>
            </button>
            <!-- Edit Button -->
            <button type="button" class="btn btn-warning btn-sm">
              <a href="/edit-student/{{$singledata->id}}/edit">Edit</a>
            </button>
            <!-- Delete Button -->
            <form style="display:inline;" onsubmit="return confirm('Do you want to delete?');" action="/delete-student/{{$singledata->id}}/delete" method="POST">
            @csrf
              <button type="submit" class="btn btn-danger btn-sm">Delete</button>
            </form>
            
          </td>
        </tr>
        <!-- Add more rows as needed -->
      </tbody>
      @endforeach

    </table>
  </div>
@include('projects/footer')

