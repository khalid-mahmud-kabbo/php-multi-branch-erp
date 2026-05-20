<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTotalDiscountToPurchasesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('purchases', function (Blueprint $table) {
            $table->decimal('total_discount', 15, 3)->nullable()->after('grand_total');
            $table->enum('total_discount_type', ['flat', 'percent'])->nullable()->after('total_discount');
            $table->decimal('total_discount_amount', 15, 3)->nullable()->after('total_discount_type');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('purchases', function (Blueprint $table) {
            $table->dropColumn(['total_discount', 'total_discount_type', 'total_discount_amount']);
        });
    }
}