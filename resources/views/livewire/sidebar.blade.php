<div>
    {{-- To attain knowledge, add things every day; To attain wisdom, subtract things every day. --}}
     
     <aside id="logo-sidebar" class="fixed top-0 left-0 z-40 w-64 h-screen transition-transform -translate-x-full lg:translate-x-0 bg-gradient-to-t from-blue-400 to-blue-700" aria-label="Sidebar">
        <div class="h-full px-3 py-4 overflow-y-auto my-5 shadow">
           <a href="#" class="flex items-center mb-5 m-5">
              <img src="{{ asset('images/logo.jpg') }}" class="w-auto" alt="Flowbite Logo" />
           </a>
           <hr class="bg-black border-1 opacity-100">
           <ul class="space-y-2 font-medium pt-3">
              
              <li>
                  <x-sidebar-menu :link="route('dashboard')" :active="request()->routeIs('dashboard')">
                    <svg aria-hidden="true" class="w-6 h-6 transition duration-75 e" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path d="M2 10a8 8 0 018-8v8h8a8 8 0 11-16 0z"></path><path d="M12 2.252A8.014 8.014 0 0117.748 8H12V2.252z"></path></svg>
                    <span class="ml-3">Dashboard</span>
                  </x-sidebar-menu>
              </li>
              <li>
                  <x-sidebar-menu :link="route('mobil')" :active="request()->routeIs('mobil')">
                    <svg xmlns="http://www.w3.org/2000/svg" class="flex-shrink w-6 h-6" fill="currentColor" class="bi bi-car-front-fill" viewBox="0 0 16 16">
                      <path d="M2.52 3.515A2.5 2.5 0 0 1 4.82 2h6.362c1 0 1.904.596 2.298 1.515l.792 1.848c.075.175.21.319.38.404.5.25.855.715.965 1.262l.335 1.679c.033.161.049.325.049.49v.413c0 .814-.39 1.543-1 1.997V13.5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1-.5-.5v-1.338c-1.292.048-2.745.088-4 .088s-2.708-.04-4-.088V13.5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1-.5-.5v-1.892c-.61-.454-1-1.183-1-1.997v-.413a2.5 2.5 0 0 1 .049-.49l.335-1.68c.11-.546.465-1.012.964-1.261a.807.807 0 0 0 .381-.404l.792-1.848ZM3 10a1 1 0 1 0 0-2 1 1 0 0 0 0 2Zm10 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2ZM6 8a1 1 0 0 0 0 2h4a1 1 0 1 0 0-2H6ZM2.906 5.189a.51.51 0 0 0 .497.731c.91-.073 3.35-.17 4.597-.17 1.247 0 3.688.097 4.597.17a.51.51 0 0 0 .497-.731l-.956-1.913A.5.5 0 0 0 11.691 3H4.309a.5.5 0 0 0-.447.276L2.906 5.19Z"/>
                    </svg>
                    <span class="flex-1 ml-3 whitespace-nowrap">Mobil</span>
                  </x-sidebar-menu>
              </li>
              <li>
                  <x-sidebar-menu :link="route('dashboard')" :active="request()->routeIs('dashboard')">
                    <svg xmlns="http://www.w3.org/2000/svg" class="flex-shrink-0 w-6 h-6" fill="currentColor"><path d="M9.5,10.5H12a1,1,0,0,0,0-2H11V8A1,1,0,0,0,9,8v.55a2.5,2.5,0,0,0,.5,4.95h1a.5.5,0,0,1,0,1H8a1,1,0,0,0,0,2H9V17a1,1,0,0,0,2,0v-.55a2.5,2.5,0,0,0-.5-4.95h-1a.5.5,0,0,1,0-1ZM21,12H18V3a1,1,0,0,0-.5-.87,1,1,0,0,0-1,0l-3,1.72-3-1.72a1,1,0,0,0-1,0l-3,1.72-3-1.72a1,1,0,0,0-1,0A1,1,0,0,0,2,3V19a3,3,0,0,0,3,3H19a3,3,0,0,0,3-3V13A1,1,0,0,0,21,12ZM5,20a1,1,0,0,1-1-1V4.73L6,5.87a1.08,1.08,0,0,0,1,0l3-1.72,3,1.72a1.08,1.08,0,0,0,1,0l2-1.14V19a3,3,0,0,0,.18,1Zm15-1a1,1,0,0,1-2,0V14h2Z"></path></svg>
                    <span class="flex-1 ml-3 whitespace-nowrap">Tagihan</span>
                  </x-sidebar-menu>
              </li>
              <hr>
              <li>
                  <x-sidebar-menu :link="route('dashboard')" :active="request()->routeIs('dashboard')">
                    <svg aria-hidden="true" class="flex-shrink-0 w-6 h-6 transition duration-75" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z" clip-rule="evenodd"></path></svg>
                    <span class="flex-1 ml-3 whitespace-nowrap">Administrator</span>
                  </x-sidebar-menu>
              </li>
           </ul>
        </div>
     </aside>  
</div>

