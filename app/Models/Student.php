<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;

   // protected $fillable = ['accepted_terms'];
    // app/Models/Student.php

    // Add the 'student_image' field to the $fillable array
    protected $fillable = ['firstname', 'lastname', 'email', 'address', 'phone', 'gender', 'selectclass', 'accepted_terms', 'stdimage'];

}
