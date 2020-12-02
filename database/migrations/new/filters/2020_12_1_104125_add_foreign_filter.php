<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddForeignFilter extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

      \DB::statement("ALTER TABLE `filter_posts` CHANGE `filter_id` `filter_id` BIGINT(20) UNSIGNED NOT NULL;");
      \DB::statement("ALTER TABLE `filter_posts` CHANGE `operator_id` `operator_id` INT(10) UNSIGNED NOT NULL;");
      \DB::statement("ALTER TABLE `filter_posts` ADD CONSTRAINT `filter_posts_on_filter` FOREIGN KEY (`filter_id`) REFERENCES `filters`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;");
      \DB::statement("ALTER TABLE `filter_posts` ADD CONSTRAINT `Operator_id_on_FilterPosts` FOREIGN KEY (`operator_id`) REFERENCES `operators`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;");

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {

    }
}
