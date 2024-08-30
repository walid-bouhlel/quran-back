<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Reciter;

class ReciterController extends Controller
{
    public function index()
    {
        $reciters = Reciter::all();
        return response()->json($reciters);
    }

    public function getSurahsForReciter($reciterId)
    {
        // Retrieve the Reciter by ID
        $reciter = Reciter::find($reciterId);

        if ($reciter) {
            // Get the Surahs associated with the specific Reciter
            $surahs = $reciter->surahs;
            
            $surahs = $surahs->map(function ($surah) {
                $surah->link = 'http://quraanapp.bouhlel.tn:8080/?surah=' . $surah->link;
                $surah->logo = 'http://quraanapp.bouhlel.tn:8080/?logo=' . $surah->logo;
                $surah->logosvg = 'http://quraanapp.bouhlel.tn:8080/?logosvg=' . $surah->logosvg;
                return $surah;
            });



            return response()->json($surahs);
        } else {
            return response()->json(['message' => 'Reciter not found.'], 404);
        }
    }
}
