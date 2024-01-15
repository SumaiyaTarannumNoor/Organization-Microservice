<?php

namespace App\Http\Controllers;

use App\Models\BankAccount;
use Illuminate\Http\Request;

class BankAccountsController extends Controller
{
    public function index()
    {
        $bankAccounts = BankAccount::with(["bank", "accountOwner", "distributor"])->get();

        return response()->json($bankAccounts, 200);
    }

    public function show($id)
    {
        $bankAccount = BankAccount::findOrFail($id);

        return response()->json($bankAccount, 200);
    }

    public function store(Request $request)
    {
        $bankAccount = BankAccount::create($request->all());

        return response()->json($bankAccount, 201);
    }

    public function update(Request $request, $id)
    {
        $bankAccount = BankAccount::findOrFail($id);
        $bankAccount->update($request->all());

        return response()->json($bankAccount, 200);
    }

    public function destroy($id)
    {
        $bankAccount = BankAccount::findOrFail($id);
        $bankAccount->delete();

        return response()->json(null, 204);
    }
}
