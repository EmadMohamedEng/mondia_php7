<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        $this->call('UsersTableSeeder');
        $this->call('RolesTableSeeder');
        $this->call('UserHasRolesTableSeeder');
        $this->call('PermissionsTableSeeder');
        $this->call('UserHasPermissionsTableSeeder');
        $this->call('RoleHasPermissionsTableSeeder');
        $this->call('ScaffoldinterfacesTableSeeder');
        $this->call('RelationsTableSeeder');
        $this->call('MigrationsTableSeeder');
        $this->call('PasswordResetsTableSeeder');
        $this->call('RoutesTableSeeder');
        $this->call('RoleRouteTableSeeder');
        $this->call('TypesTableSeeder');
        $this->call('SettingsTableSeeder');

        $this->call('ProvidersTableSeeder');
        $this->call('ServicesTableSeeder');
        $this->call('ContentsTableSeeder');

        $this->call('CountriesTableSeeder');
        $this->call('OperatorsTableSeeder');
        $this->call('AudiosTableSeeder');
        $this->call('PostsTableSeeder');

        $this->call('DeleteAllFlagsTableSeeder');
        $this->call('LanguagesTableSeeder');
        $this->call('StaticBodiesTableSeeder');
        $this->call('StaticTranslationsTableSeeder');
        $this->call('TranslatablesTableSeeder');
        $this->call('TansBodiesTableSeeder');
    }
}
