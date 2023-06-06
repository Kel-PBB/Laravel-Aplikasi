<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Invoice;
use App\Models\Pesanan;
use Illuminate\Http\Request;

class PesananController extends Controller
{
    //

    public function store(Request $request)
    {
        // dd($request);die();
        $request->validate([
            'kode_pesanan' => 'required|string|max:5',
            'mobil_id' => 'required',
            'waktu_pengambilan' => 'required|date_format:H:i:s',
            'tanggal_rental_mulai' => 'required|date',
            'tanggal_rental_selesai' => 'required|date',
            'user_id' => 'required',
        ]);


        $pesanans = Pesanan::create([
            'kode_pesanan' => $request['kode_pesanan'],
            'mobil_id' => $request['mobil_id'],
            'waktu_pengambilan' => $request['waktu_pengambilan'],
            'tanggal_rental_mulai' => $request['tanggal_rental_mulai'],
            'tanggal_rental_selesai' => $request['tanggal_rental_selesai'],
            'user_id' => $request['user_id'],
        ]);

        if($pesanans){

            // Invoice::create([
            //     'no_invoice' => 
            // ])
            return response()->json([
                'pesanans' => $pesanans,
                'message' => 'Booking berhasil terkirim'
            ]);
        }else{
            return response()->json([
                'pesanans' => $pesanans,
                'message' => 'Booking belum berhasil'
            ]);
        }
    }
}
