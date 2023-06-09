<?php

namespace App\Http\Controllers\Api;

use Carbon\Carbon;
use App\Models\Mobil;
use App\Helpers\Helper;
use App\Models\Invoice;
use App\Models\Pesanan;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class PesananController extends Controller
{
    //

    public function index()
    {
        $user = Auth::user();
        // $user = Mobil::all();
        $pesanans = $user->pesanan();

        return response()->json([
            'pesanans' => $pesanans,
        ]);
        
    }

    public function show(Request $request, $id)
    {
        $pesanan = Pesanan::where('kode_pesanan', $id)->first();

        return response()->json([
            'pesanan_detail' => $pesanan
        ]);
    }

    public function form(Request $request)
    {
        
        $search = $request->session()->get('search', 'default');
        $kode_mobil = $request->session()->get('mobil_id', 'default');
        $total_day = $request->session()->get('total_days', 'default');
        $total_harga = $request->session()->get('total', 'default');

        $tanggal_m = $search['tanggal_mulai'];
        $tanggal_s = $search['tanggal_selesai'];

        $tanggal_s = Carbon::parse($tanggal_s);
        $tanggal_m = Carbon::parse($tanggal_m);

        return response()->json([
            'kode_mobil' => $kode_mobil,
            'days' => $total_day,
            'total' => $total_harga,
            'search' => $search
        ]);
    }


    public function store(Request $request)
    {
        // dd($request);die();
        $request->validate([
            'kode_pesanan' => 'required|string|max:5',
            'mobil_id' => 'required',
            'waktu_pengambilan' => 'required|date_format:H:i:s',
            'tanggal_rental_mulai' => 'required|date',
            'tanggal_rental_selesai' => 'required|date',
            'total' => 'required',
            'status_id' => 'required',
        ]);

        $user = Auth::user();
        $user_id = $user->id; 

        $kode_pesanan = Helper::PesananIDGenerator(new Pesanan, 'kode_pesanan', 5, 'P');

        $pesanans = Pesanan::create([
            'kode_pesanan' => $kode_pesanan,
            'mobil_id' => $request['mobil_id'],
            'waktu_pengambilan' => $request['waktu_pengambilan'],
            'tanggal_rental_mulai' => $request['tanggal_rental_mulai'],
            'tanggal_rental_selesai' => $request['tanggal_rental_selesai'],
            'total' => $request['total'],
            'status_id' => $request['status_id'],
            'user_id' => $user_id,
        ]);

        if($pesanans){

            // Invoice::create([
            //     'no_invoice' => 
            // ])
            // $search = session('search');
            // $search = json_encode($search);
            return response()->json([
                'pesanans' => $pesanans,
                'message' => 'Booking berhasil terkirim',
            ]);
        }else{
            return response()->json([
                'pesanans' => $pesanans,
                'message' => 'Booking belum berhasil'
            ]);
        }
    }
}
