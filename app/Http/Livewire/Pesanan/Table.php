<?php

namespace App\Http\Livewire\Pesanan;

use App\Helpers\Helper;
use App\Models\Invoice;
use App\Models\Pesanan;
use Livewire\Component;

class Table extends Component
{
    public function render()
    {
        return view('livewire.pesanan.table',[
            'pesanans' => Pesanan::all()
        ]);
    }

    public function updateToConfirm($id)
    {
        $pesanan = Pesanan::where('id', $id)->first();
        
        Invoice::create([
            'no_invoice' => Helper::InvoiceIDGenerator(new Invoice, 'no_invoice', 5, 'INV'),
            'pesanan_id' => $pesanan->id,
            'nama_bank' => 'Bank Rakyat Indonesia',
            'norek' => '089829749238',
            'status_id' => 2,
            'total' => $pesanan->total
        ]);
        $pesanan->update(['status_id' => 2]);
    }
    public function updatePengembalian($id)
    {
        Pesanan::where('id', $id)->update(['status_id' => 3]);
    }
    public function updateSelesai($id)
    {
        Pesanan::where('id', $id)->update(['status_id' => 4]);
    }
}
