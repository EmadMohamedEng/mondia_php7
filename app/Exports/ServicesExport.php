<?php

namespace App\Exports;

use App\Service;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class ServicesExport implements FromView
{
    public function view(): View
    {
        return view('exports.Service', [
            'services' => Service::all()
        ]);
    }
}
