<?php

namespace App\Http\Livewire\Mobil;

use App\Models\Mobil;
use Livewire\Component;

class Table extends Component
{
    public $hapusMobil = false;
    public $delid = '';
    public function render()
    {
        // $mobil = Mobil::find(1);
        // foreach($mobil->spek as $s){

        // }
        // dd($mobil->spek);
        return view('livewire.mobil.table', [
            'mobils' => Mobil::all()
        ]);
    }

    public function destroy($id)
    {
        $this->resetErrorBag();

        $this->delid = $id;
        $this->hapusMobil = true;
    }

    public function hapusMobil()
    {
        Mobil::destroy($this->delid);
        $this->hapusMobil = false;
        $this->dispatchBrowserEvent('banner-message', ['style' => 'success', 'message' => 'Mobil telah berhasil dihapus!']);
    }
}
