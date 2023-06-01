<?php

namespace App\Http\Livewire\Mobil;

use App\Models\Mobil;
use Livewire\Component;

class TambahModal extends Component
{
    protected $rules = [
        'nama' => 'required',
        'brand' => 'required',
        'mesin' => 'required',
        'seat' => 'required',
        'bahan_bakar' => 'required',
        'transmisi' => 'required',
        'harga' => 'required',
    ];

    public $tambahkanMobil = false;

    public $nama = '';
    public $brand = '';
    public $mesin = '';
    public $seat = '';
    public $harga = '';
    public $bahan_bakar = '';
    public $transmisi = '';
    
    public function tambahMobil()
    {
        $this->resetErrorBag();

        $this->tambahkanMobil = true;
    }

    public function masukMobil()
    {
        $this->validate();

        $mobil = Mobil::create([
            'nama' => $this->nama,
            'brand' => $this->brand,
            'mesin' => $this->mesin,
            'seat' => $this->seat,
            'bahan_bakar' => $this->bahan_bakar,
            'transmisi' => $this->transmisi,
            'harga' => $this->harga,
        ]);

        $this->resetInput();
        $this->emit('mobilMasuk', $mobil);
        $this->dispatchBrowserEvent('banner-message', ['style' => 'success', 'message' => 'Mobil berhasil ditambahkan!']);
    }

    public function resetInput()
    {
        $this->nama = null;
        $this->brand = null;
        $this->mesin = null;
        $this->seat = null;
        $this->bahan_bakar = null;
        $this->transmisi = null;
        $this->harga = null;
    }

    public function render()
    {
        return view('livewire.mobil.tambah-modal');
    }
}
