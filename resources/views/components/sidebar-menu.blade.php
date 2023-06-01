@props(['active', 'link'])

@php
$classes = ($active ?? false)
            ? 'flex items-center p-2 rounded-lg text-blue-700 text-sm semibold bg-white'
            : 'flex items-center p-2 rounded-lg text-sky-700 text-sm semibold hover:bg-gradient-to-r hover:from-cyan-500 hover:to-blue-700 hover:text-white my-5';
@endphp
<a href="{{ $link }}" {{ $attributes->merge(['class' => $classes]) }}>
    {{ $slot }}
</a>