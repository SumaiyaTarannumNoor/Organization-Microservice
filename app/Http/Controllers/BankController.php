<?php

namespace App\Http\Controllers;

use App\Models\Bank;
use Illuminate\Http\Request;

class BankController extends Controller
{
    public function index()
    {
        $banks = Bank::all();

        return response()->json($banks, 200);
    }

    public function show($id)
    {
        $bank = Bank::findOrFail($id);

        return response()->json($bank, 200);
    }

    public function store(Request $request)
    {
        $bank = Bank::create($request->all());

        return response()->json($bank, 201);
    }

    public function update(Request $request, $id)
    {
        $bank = Bank::findOrFail($id);
        $bank->update($request->all());

        return response()->json($bank, 200);
    }

    public function destroy($id)
    {
        $bank = Bank::findOrFail($id);
        $bank->delete();

        return response()->json(null, 204);
    }
}
