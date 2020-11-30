<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFilterPostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('filter_posts', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('filter_id');
            $table->integer('operator_id');
            $table->date('published_date')->nullable();
            $table->timestamps();
        });
        \DB::statement("ALTER TABLE `filter_posts` CHANGE `filter_id` `filter_id` BIGINT(20) NOT NULL;");
        \DB::statement("ALTER TABLE `filter_posts` ADD CONSTRAINT `filter_posts_on_filter` FOREIGN KEY (`filter_id`) REFERENCES `filters`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;");
        \DB::statement("ALTER TABLE `filter_posts` ADD CONSTRAINT `operator_on_filters` FOREIGN KEY (`operator_id`) REFERENCES `operators`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;");

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('filter_posts');
    }
}
