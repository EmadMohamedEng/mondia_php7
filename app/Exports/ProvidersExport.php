<?php

namespace App\Exports;

use App\Provider;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class ProvidersExport implements FromView
{
    public function view(): View
    {
        return view('exports.Provider', [
            'Provider' => Provider::all()
        ]);
    }
}
