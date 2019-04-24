<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddLocaleToSettings extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      Schema::table('settings', function (Blueprint $table) {
        $table->string('locale',15)->nullable()->default(config('app.locale'));
      });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
      Schema::table('settings', function ($table) {
          $table->dropColumn('locale');
      });
    }
}
