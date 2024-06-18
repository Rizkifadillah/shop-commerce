<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use Modules\Shop\Database\Seeders\ShopDatabaseSeeder;

use App\Models\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
        
        if ($this->command->confirm('Apakah Anda ingin menyegarkan migrasi sebelum melakukan penyemaian, ini akan menghapus semua data lama ?')) {
            $this->command->call('migrate:refresh');
            $this->command->info('Data dihapus, mulai dari database kosong');
        }

        User::factory()->create();
        $this->command->info('sample user seeded.');

        if ($this->command->confirm('Apakah Anda ingin membuat beberapa produk sampel ?')) {
            $this->call(ShopDatabaseSeeder::class);
        }
        
        // $this->call(ShopDatabaseSeeder::class);
    }
}
