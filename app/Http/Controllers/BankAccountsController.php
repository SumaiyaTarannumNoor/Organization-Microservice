<?php

namespace App\Http\Controllers;

use App\Models\BankAccount;
use Illuminate\Http\Request;

class BankAccountsController extends Controller
{
    public function index()
    {
        $bankAccount = BankAccount::with(["bank", "accountOwner", "distributor"])->get();

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Bank Accounts showing successfully.","data" => $bankAccount]);
    }

    public function show($id)
    {
        $bankAccount = BankAccount::findOrFail($id);

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Bank Account showing successfully.","data" => $bankAccount]);
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'bank_id' => 'nullable|exists:bank,id',
                'owner_type' => 'required|string|max:255',
                'account_owner_id' => 'nullable|exists:salesorganization,id',
                'bank_account_number' => 'required|string|max:255',
                'status' => 'nullable|boolean',
                'created_by' => 'nullable|string|max:255',
                'updated_by' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);
        $bankAccount = BankAccount::create($request->all());

        return response()->json(["statusCode" => 201, "success" => true, "message"=>"Bank Account created successfully.","data" => $bankAccount]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error creating packaging unit", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $request->validate([
                'bank_id' => 'nullable|exists:bank,id',
                'owner_type' => 'required|string|max:255',
                'account_owner_id' => 'nullable|exists:salesorganization,id',
                'bank_account_number' => 'required|string|max:255',
                'status' => 'nullable|boolean',
                'created_by' => 'nullable|string|max:255',
                'updated_by' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);
        $bankAccount = BankAccount::findOrFail($id);
        $bankAccount->update($request->all());

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Bank Account updated successfully.","data" => $bankAccount]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error updating packaging unit", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function destroy($id)
    {
        $bankAccount = BankAccount::findOrFail($id);
        $bankAccount->delete();

        return response()->json(["statusCode" => 204, "success" => true, "message"=>"Bank Account deleted successfully.","data" => $bankAccount]);
    }
}
