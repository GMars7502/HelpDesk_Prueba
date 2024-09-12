<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


use App\Models\Sla;
use App\Models\User;
use App\Models\Ticket;
use App\Models\Customer;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
//use App\Http\Controllers\Log








class Ticket2Controller extends Controller
{
    // Funcion de redireccion de la pagina CrearTicket
    public function RealizarTicket()
    {
        return view('tickets.Tikectpage');
    }

    public function Paginaindex()
    {
        return view('index');
    }



    
    public function GuardarTicket(Request $request)
    {
        try {
                        // Validación del formulario
            $this->validate($request, [
                'email' => 'required|email',
                'problemTitle' => 'required|string|max:255',
                'problemDescription' => 'required|string|max:255',
                'priority' => 'required|int',
                'image' => 'nullable|image|mimes:jpeg,png,jpg,gif',
            ]);

    
            // Verificación si el correo existe
            $customer = Customer::where('email', $request->input('email'))->first();
            
            if (!$customer) {
                // Crear cliente si no existe

                $customer = Customer::create([
                    'name' => $request->email,
                    'email' => $request->email,
                ]);
                
            }
            $customer_id = $customer->id;
            
            // Subir imagen al storage si existe
            $nameImage = null; // Por defecto nulo
            if ($request->hasFile('image')) {
                $image = $request->file('image');
                $imagePath = $image->store('images', 'public');
            }
            
    
            // Generar número de ticket
            $year = today()->year;
            $latest_ticket = Ticket::latest()->first();
            $last_number = $latest_ticket ? Str::of($latest_ticket->number)->explode('/')[0] : 0;
            $new_number = $last_number + 1;
    
            // Crear ticket
            $ticket = Ticket::create([
                'number' => $new_number . "/" . $year,
                'sla_id' => $request->input('priority'),
                'customer_id' => $customer_id,
                'reporteddate' => today(),
                'problemsummary' => $request->input('problemTitle'),
                'problemdetail' => $request->input('problemDescription'),
                'status' => 'Assigned',
                'assigneddate' => now(),
                'image' => $imagePath,
            ]);

            

            $ticketID = $ticket->id;
            
            // Guardar ticket y redirigir con mensaje
            if ($ticket) {
                return redirect()->route('RealizarTicket')->with(['success' => 'Ticket creado con éxito. Número de ticket: ' . $ticketID]);
            } else {
                return redirect()->route('RealizarTicket')->with(['error' => 'No se pudo crear el ticket.']);
            }
    
        } catch (\Throwable $th) {
            //return dump($th->getMessage());
            return redirect()->route('RealizarTicket')->with(['error' => $th->getMessage()]);
        }


        


    }

}
