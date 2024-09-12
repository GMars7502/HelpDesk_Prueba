<?php

use App\Models\News;
use App\Models\User;
use App\Models\Ticket;
use App\Models\Log_user;
use App\Services\ReportService;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SlaController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UsuarioController;
use App\Http\Controllers\TicketController;
use App\Http\Controllers\LogUserController;
use App\Http\Controllers\ProjectController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\Ticket2Controller; //cambio realizado 

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', function () {
//    return view('auth.login');
//});

Route::get('/', function () {
    return view('index');
});



//Agregador por M - ------------------------------------------------------------------


/*
Route::get('/RealizarTicket',function()
{
    return view('Tikectpage');
});
*/
//vista de la pagina de Tickectpage
Route::get('/RealizarTicket', [Ticket2Controller::class, 'RealizarTicket'])->name('RealizarTicket'); //cambio realizado 


Route::post('/tickets/GuardarTicket', [Ticket2Controller::class, 'GuardarTicket'])->name('GuardarTicket');// cambio realizado


Route::get('/',[Ticket2Controller::class, 'Paginaindex'])->name('Paginaindex');

//-----------------------------------------------------------------------------------------------


Route::group(['middleware' => 'auth'], function() {
    Route::get('/dashboard', function () {
        $report = new ReportService(now()->format('Y'), now()->format('m'));
        $allReports = $report->getAllTechnicianTickets();
        $news = News::latest()->take(3)->get();
        $user = new User();
        return view('dashboard', compact('report', 'allReports', 'news', 'user'));
    })->name('dashboard');

    Route::resource('tickets', TicketController::class);

    Route::resource('permissions', PermissionController::class)->only([
        'index'
    ]);

    Route::resource('roles', RoleController::class)->except([
        'show'
    ]);

    Route::resource('users', UsuarioController::class)->except([
        'show'
    ]);

    Route::resource('news', NewsController::class)->except([
        'show'
    ]);

    Route::resource('customers', CustomerController::class)->except([
        'show'
    ]);

    Route::resource('slas', SlaController::class)->except([
        'show'
    ]);

    Route::resource('projects', ProjectController::class)->except([
        'show'
    ]);


    Route::get('user-log', [LogUserController::class, 'index'])->name('userlog.index');

});

//permissions




require __DIR__.'/auth.php';
