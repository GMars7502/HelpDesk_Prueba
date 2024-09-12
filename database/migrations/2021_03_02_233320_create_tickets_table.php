<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTicketsTable extends Migration {
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tickets', function (Blueprint $table) {
            $table->id();
            $table->string('number');
            $table->foreignId('sla_id')->constrained();
            $table->foreignId('customer_id')->constrained();
            $table->integer('reportedby')->nullable();
            $table->dateTime('reporteddate')->nullable();
            $table->string('problemsummary')->nullable();
            $table->string('problemdetail')->nullable();
            $table->string('status')->nullable();
            $table->integer('assignee')->nullable();
            $table->dateTime('assigneddate')->nullable();
            $table->integer('pendingby')->nullable();
            $table->dateTime('pendingdate')->nullable();
            $table->string('resolution')->nullable();
            $table->integer('resolvedby')->nullable();
            $table->dateTime('resolveddate')->nullable();
            $table->integer('closedby')->nullable();
            $table->dateTime('closeddate')->nullable();
            $table->integer('documentedby')->nullable();
            $table->dateTime('documenteddate');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tickets');
    }
}
