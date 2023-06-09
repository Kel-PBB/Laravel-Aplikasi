<?php

namespace App\Http\Livewire\Invoice;

use App\Models\Invoice;
use App\Models\Pesanan;
use Livewire\Component;

class Table extends Component
{
    public function render()
    {
        return view('livewire.invoice.table', [
            'invoices' => Invoice::all()
        ]);
    }

    public function updateToLunas($id)
    {
        $invoice = Invoice::where('id', $id)->first();
        $invoice->update(['status_id' => 1]);
        Pesanan::where('kode_pesanan', $invoice->pesanan->kode_pesanan)->update(['status_id' => 3]);
    }
}
