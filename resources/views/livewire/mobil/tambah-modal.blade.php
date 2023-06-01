
<div>
    <x-button-green wire:click="tambahMobil" wire:loading.attr="disabled">
            {{ __('Tambah') }}
    </x-button-green>
    
    <!-- Delete User Confirmation Modal -->
    <form action="POST" class="mt-5" wire:submit.prevent="masukMobil">
        <x-dialog-modal wire:model="tambahkanMobil">
            <x-slot name="title">
                {{ __('Tambah Mobil') }}
            </x-slot>
        
            <x-slot name="content">
                {{ __('Tambahkan informasi mobil secara lengkap!') }}
                    <div class="relative z-0 w-full mb-6 group">
                        <x-input-form  type="email" wire:model="email" name="email" id="email" placeholder="{{ _('Email') }}" required />
                        <x-input-error for="email" class="mt-2" />
                    </div>
                    <div class="relative z-0 w-full mb-6 group">
                        <x-input-form type="text" wire:model="nama" name="nama" id="nama" placeholder="{{ _('Nama') }}" required />
                    </div>
                    <div class="relative z-0 w-full mb-6 group">
                        <x-input-form type="tel" wire:model="nomor" pattern="\+?([ -]?\d+)+|\(\d+\)([ -]\d+)" name="nomor" id="nomor" placeholder="{{ _('Nomor Telepon') }}" required />
                    </div>
                    <div class="relative z-0 w-full mb-6 group">
                        <x-input-form type="text" wire:model="alamat" name="alamat" id="alamat" placeholder="{{ _('Alamat') }}" required />
                    </div>
                    <div class="flex justify-center">
                        {{-- <div class="mb-3 w-full">
                            <select id="paket" wire:model="paket" class="block py-2.5 px-0 w-full text-sm text-gray-500 bg-transparent border-0 border-b-2 border-gray-200 dark:text-gray-400 dark:border-gray-700 focus:outline-none focus:ring-0 focus:border-gray-200 peer">
                                <option selected>Pilih Paketan</option>
                                @foreach ($pakets as $paket)
                                    <option value="{{ $paket->id }}">{{ $paket->nama }}</option>
                                @endforeach
                            </select>
                        </div> --}}
                    </div>
                    <x-input-error for="paket" class="mt-2" />
                </x-slot>
                
                <x-slot name="footer">
                    <x-secondary-button wire:click="$toggle('tambahkanMobil')" wire:loading.attr="disabled">
                        {{ __('Cancel') }}
                    </x-secondary-button>
                    
                    <x-button-green class="ml-3">
                        {{ __('Submit') }}
                    </x-button-green>
                </x-slot>
        </x-dialog-modal>
    </form>
</div>



