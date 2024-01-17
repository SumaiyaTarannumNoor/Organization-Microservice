<?php

namespace App\Http\Controllers;

use App\Models\SalesOrganization;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SalesOrganizationController extends Controller
{
    public function index()
    {

        
        $salesOrganizations = SalesOrganization::with("bankAccounts")->get();


        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Saless Organizations showing successfully.","data" => $salesOrganizations]);
    }

    public function show($id)
    {
        $salesOrganizations = SalesOrganization::findOrFail($id);

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Saless Organization showing successfully.","data" => $salesOrganizations]);
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'name' => 'required|string|max:255',
                'status' => 'nullable|boolean',
                'created_by' => 'nullable|string|max:255',
                'updated_by' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);
        $salesOrganizations = SalesOrganization::create($request->all());

        return response()->json(["statusCode" => 201, "success" => true, "message"=>"Saless Organization created successfully.","data" => $salesOrganizations]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error creating sales organization information", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $request->validate([
                'name' => 'required|string|max:255',
                'status' => 'nullable|boolean',
                'created_by' => 'nullable|string|max:255',
                'updated_by' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);


        $salesOrganizations = SalesOrganization::findOrFail($id);
        $salesOrganizations->update($request->all());

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Saless Organization updated successfully.","data" => $salesOrganizations]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error updating sales organization information", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function destroy($id)
    {
        $salesOrganizations = SalesOrganization::findOrFail($id);
        $salesOrganizations->delete();

        return response()->json(["statusCode" => 204, "success" => true, "message"=>"Saless Organization deleted successfully.","data" => $salesOrganizations]);
    }
}
