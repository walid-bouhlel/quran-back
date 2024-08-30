<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Surah;
class SurahController extends Controller
{
    public function index()
    {
        $surahs = Surah::with('reciter')->get();
        return response()->json($surahs);
    }
}
