<!-- resources/views/ticket-form.blade.php -->

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enviar un Ticket - Helpdesk</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-200 font-sans">

    <!-- Header con botón de retroceso -->
    <header class="bg-indigo-500 p-4 flex items-center sticky top-0 z-50">
        <a href="{{ route('Paginaindex') }}" class="bg-indigo-700 text-white p-2 rounded-full hover:bg-indigo-600">
            <!-- Icono de retroceso -->
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7" />
            </svg>
        </a>
        <h1 class="text-white text-xl font-bold ml-4">SOPORTE TÉCNICO HELPDESK</h1>
    </header>

    <!-- Sección de mensaje de éxito -->
    <div class="container mx-auto px-6">
        @if(session('success'))
            <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded relative my-4 mx-auto max-w-3xl" role="alert">
                <strong class="font-bold">¡Éxito!</strong>
                <span class="block sm:inline">{{ session('success') }}</span>
            </div>
        @endif
    </div>

    <!-- Formulario de Ticket -->
    <section class="m-4 bg-white py-10 sm:py-10 rounded-3xl shadow-lg max-w-3xl mx-auto">
        <div class="px-6 lg:px-8">
            <div class="mx-auto max-w-2xl sm:text-center">
                <h2 class="text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl">Enviar un Ticket</h2>
                <p class="mt-6 text-lg leading-8 text-gray-600 my-5">Soporte Técnico revisará el problema y te enviará una respuesta lo más pronto posible.</p>
            </div>
            <form id="ticketForm" action="{{ route('GuardarTicket') }}" method="POST" enctype="multipart/form-data" class="space-y-6">
                @csrf
                <div>
                    <label for="email" class="block text-sm font-medium text-gray-700">Correo electrónico</label>
                    <input type="email" name="email" id="email" placeholder="Ingrese su correo electrónico" class="mt-1 block w-full px-3 py-2 bg-gray-50 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm" required>
                </div>
                
                <div>
                    <label for="problemTitle" class="block text-sm font-medium text-gray-700">Título del problema</label>
                    <input type="text" name="problemTitle" id="problemTitle" placeholder="Título del Problema" class="mt-1 block w-full px-3 py-2 bg-gray-50 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm" required>
                </div>
                
                <div>
                    <label for="problemDescription" class="block text-sm font-medium text-gray-700">Descripción del problema</label>
                    <textarea id="problemDescription" name="problemDescription" rows="5" placeholder="Descripción del problema" class="mt-1 block w-full px-3 py-2 bg-gray-50 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm" required></textarea>
                </div>

                <div>
                    <label for="image" class="block text-sm font-medium text-gray-700">Subir una imagen (opcional)</label>
                    <input type="file" id="image" name="image" class="mt-1 block w-full text-sm text-gray-500 file:mr-4 file:py-2 file:px-4 file:rounded-full file:border-0 file:text-sm file:font-semibold file:bg-indigo-100 file:text-indigo-700 hover:file:bg-indigo-200">
                </div>
                <div>
                    <label for="priority" class="block text-sm font-medium text-gray-700">Prioridad</label>
                    <select id="priority" name="priority" class="mt-1 block w-full px-3 py-2 bg-gray-50 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm" required>
                        <option value="3">Medio</option>
                        <option value="2">Alto</option>
                        <option value="1">Crítico</option>
                    </select>
                </div>
                <div>
                    <button type="submit" class="w-full bg-indigo-500 hover:bg-indigo-600 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline">Enviar Ticket</button>
                </div>
            </form>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-indigo-500 text-white py-4 text-center">
        <p>Helpdesk Soporte Técnico - Todos los derechos reservados © 2024</p>
    </footer>

</body>
</html>
