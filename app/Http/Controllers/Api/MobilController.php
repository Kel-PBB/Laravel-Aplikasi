<?php

namespace App\Http\Controllers\APi;

use App\Models\Mobil;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class MobilController extends Controller
{
    //
    public function search(Request $request)
    {
        $tanggal_m = $request->input('tanggal_mulai');
        $tanggal_s = $request->input('tanggal_selesai');
        $jam_p = $request->input('jam_pengembalian');
                // $mobil = Mobil::whereHas('pesanan', function ($query){
        //     $query->whereNot('tanggal_rental_mulai', 'like', '2023-06-03');
        // })->get();
        // // foreach($mobil->spek as $s){
        $results = Mobil::whereHas('pesanan', function ($query) use ($tanggal_m, $tanggal_s, $jam_p){
            $query->whereNot('tanggal_rental_mulai', 'like', $tanggal_m)
            ->whereNot('tanggal_rental_mulai', 'like', $tanggal_s)
            ->whereNot('waktu_pengambilan', 'like', $jam_p);
        })->get();

        if($results->count() !== 0 ){
            return response()->json([
                'mobil' => $results,
                'message' => 'mencari berhasil'
            ]);
        }else{
            return response()->json([
                'mobil' => $results,
                'message' => 'Mobil tidak ditemukan'
            ]);
        }

        
    }

    public function list(Request $request)
    {
        $mobil = Mobil::all();
        return response()->json([
            'mobil' => $mobil,
            'message' => 'mencari berhasil'
        ]);
    }
}
