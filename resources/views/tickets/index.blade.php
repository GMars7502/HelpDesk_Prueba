@extends('layouts.app')
@section('content')
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Ticket</h1>
        </div>

        <div class="section-body">

            <div class="card">
                <div class="card-body">
                    <form action="{{ route('tickets.index') }}" method="GET">
                        <div class="form-group">
                            <div class="input-group mb-3">
                                @can('tickets.create')
                                    <div class="input-group-prepend">
                                        <a href="{{ route('tickets.create') }}" class="btn btn-primary" style="padding-top: 10px;"><i class="fa fa-plus-circle"></i> TAMBAH</a>
                                    </div>
                                @endcan
                                <input type="text" class="form-control" name="q"
                                       placeholder="cari berdasarkan masalah">
                                <div class="input-group-append">
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i> CARI
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th scope="col" style="text-align: center;width: 6%">NO.</th>
                                <th scope="col">NOMOR</th>
                                <th scope="col">URGENCY</th>
                                <th scope="col">CUSTOMER</th>
                                <th scope="col">REPORTED</th>
                                <th scope="col">PROBLEM</th>
                                <th scope="col">STATUS</th>
                                <th scope="col" style="width: 15%;text-align: center">AKSI</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach ($tickets as $no => $ticket)
                                <tr>
                                    <th scope="row" style="text-align: center">{{ ++$no + ($tickets->currentPage()-1) * $tickets->perPage() }}</th>
                                    <td>{{ $ticket->number }}</td>
                                    <td>{{ $ticket->sla->name }}</td>
                                    <td>{{ $ticket->customer->name }}</td>
                                    <td>{{ Carbon\Carbon::parse($ticket->reporteddate)->format('d M Y - H:i') }}</td>
                                    <td>{{ $ticket->problemsummary }}</td>
                                    <td>{{ $ticket->status }}</td>
                                    <td class="text-center">
                                        @can('tickets.edit')
                                            <a href="{{ route('tickets.edit', $ticket->id) }}" class="btn btn-sm btn-primary">
                                                <i class="fa fa-pencil-alt"></i>
                                            </a>
                                        @endcan

                                        @can('tickets.delete')
                                            <button onClick="Delete(this.id)" class="btn btn-sm btn-danger" id="{{ $ticket->id }}">
                                                <i class="fa fa-trash"></i>
                                            </button>
                                        @endcan
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                        <div style="text-align: center">
                            {{$tickets->links("vendor.pagination.bootstrap-4")}}
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>
</div>

<script>
    //ajax delete
    function Delete(id)
        {
            var id = id;
            var token = $("meta[name='csrf-token']").attr("content");

            swal({
                title: "APAKAH KAMU YAKIN ?",
                text: "INGIN MENGHAPUS DATA INI!",
                icon: "warning",
                buttons: [
                    'TIDAK',
                    'YA'
                ],
                dangerMode: true,
            }).then(function(isConfirm) {
                if (isConfirm) {


                    //ajax delete
                    jQuery.ajax({
                        url: "{{ route("tickets.index") }}/"+id,
                        data:     {
                            "id": id,
                            "_token": token
                        },
                        type: 'DELETE',
                        success: function (response) {
                            if (response.status == "success") {
                                swal({
                                    title: 'BERHASIL!',
                                    text: 'DATA BERHASIL DIHAPUS!',
                                    icon: 'success',
                                    timer: 1000,
                                    showConfirmButton: false,
                                    showCancelButton: false,
                                    buttons: false,
                                }).then(function() {
                                    location.reload();
                                });
                            }else{
                                swal({
                                    title: 'GAGAL!',
                                    text: 'DATA GAGAL DIHAPUS!',
                                    icon: 'error',
                                    timer: 1000,
                                    showConfirmButton: false,
                                    showCancelButton: false,
                                    buttons: false,
                                }).then(function() {
                                    location.reload();
                                });
                            }
                        }
                    });

                } else {
                    return true;
                }
            })
        }
</script>
@stop