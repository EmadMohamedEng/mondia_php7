<?php

namespace App\Exports;

use App\Video;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class ContentsExport implements FromView
{
    public function view(): View
    {
        return view('exports.Content', [
            'contents' => Video::all()
        ]);
    }
}
