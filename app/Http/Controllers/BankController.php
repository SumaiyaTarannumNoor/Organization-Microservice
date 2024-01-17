<?php

namespace App\Http\Controllers;

use App\Models\Bank;
use Illuminate\Http\Request;

class BankController extends Controller
{
    public function index()
    {
        $banks = Bank::with("bank_accounts")->get();

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Banks showing successfully.","data" => $banks]);
    }

    public function show($id)
    {
        $banks = Bank::findOrFail($id);

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Bank showing successfully.","data" => $banks]);
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'bank_name' => 'required|string|max:255',
                'description' => 'required|string|max:255',
                'contact_person' => 'required|string|max:255',
                'contact_person_mobile' => 'required|string|max:20',
                'status' => 'nullable|boolean',
                'create_by' => 'nullable|string|max:255',
                'modified_by' => 'nullable|string|max:255',
                'modified_at' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);
        $banks = Bank::create($request->all());

        return response()->json(["statusCode" => 201, "success" => true, "message"=>"Bank created successfully.","data" => $banks]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error creating bank information", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $request->validate([
                'bank_name' => 'required|string|max:255',
                'description' => 'required|string|max:255',
                'contact_person' => 'required|string|max:255',
                'contact_person_mobile' => 'required|string|max:20',
                'status' => 'nullable|boolean',
                'create_by' => 'nullable|string|max:255',
                'modified_by' => 'nullable|string|max:255',
                'modified_at' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $banks = Bank::findOrFail($id);
        $banks->update($request->all());

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Bank updated successfully.","data" => $banks]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error updating bank information", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function destroy($id)
    {
        $banks = Bank::findOrFail($id);
        $banks->delete();

        return response()->json(["statusCode" => 204, "success" => true, "message"=>"Bank deleted successfully.","data" => $banks]);
    }
}
