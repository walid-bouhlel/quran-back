<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Application;
use Carbon\Carbon;
use Illuminate\Support\Str;

class createAppCredential extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'create-app-credential {--name=}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $name = $this->option('name');
        // Validate that the name option is provided
        if(!$name){
            $name = $this->ask('What is the name?');
        }
        
        do {
            $secret = Str::random(40);
        } while (Application::where("secret", $secret)->exists());
        
        $this->info('secret generated successful!');
        
        Application::create([
            "appname"=> $name,
            "description" => null,
            "secret"=> $secret,
            'expiration_date' => Carbon::now()->addYear()
        ]);
        $this->info('Application created successful!');
    }

}
