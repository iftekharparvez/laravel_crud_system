<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student Information</title>
  <link rel="icon" href="{{ asset('image/icon.jpg') }}" type="image/x-icon">
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    /* Custom styles for a nice centered and inline menu design */

    .nice-menu {
      display: flex;
      justify-content: center;
      align-items: center;
      background-color: #000;
      color: #fff;
      padding: 10px;
    }

    .nice-menu a {
      color: #fff;
      margin: 0 15px;
      text-decoration: none;
    }

    .nice-menu a:hover {
      text-decoration: underline;
    }
  </style>
</head>

<body>
    

    @include('partials/nav')
    @yield('content')

  <!-- Bootstrap JS and Popper.js -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
