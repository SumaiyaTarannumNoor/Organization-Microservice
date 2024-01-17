<?php

namespace App\Http\Controllers;

use App\Models\AdministrativeDivision;
use Illuminate\Http\Request;

class AdministrativeDivisionController extends Controller
{
    public function index()
    {
        $administritiveDivisions = AdministrativeDivision::with("districts")->get();

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Administritive Divisions showing successfully.","data" => $administritiveDivisions]);
    }

    public function show($id)
    {
        $administritiveDivisions = AdministrativeDivision::findOrFail($id);

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Administritive Division showing successfully.","data" => $administritiveDivisions]);
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'status' => 'nullable|boolean',
                'create_by' => 'nullable|string|max:255',
                'modified_by' => 'nullable|string|max:255',
                'modified_at' => 'nullable|date',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);



        $administritiveDivisions = AdministrativeDivision::create($request->all());

        return response()->json(["statusCode" => 201, "success" => true, "message"=>"Administritive Division created successfully.","data" => $administritiveDivisions]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error creating product category", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $request->validate([
                'status' => 'nullable|boolean',
                'create_by' => 'nullable|string|max:255',
                'modified_by' => 'nullable|string|max:255',
                'modified_at' => 'nullable|date',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);


        $administritiveDivisions = AdministrativeDivision::findOrFail($id);
        $administritiveDivisions->update($request->all());

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Administritive Division updated successfully.","data" => $administritiveDivisions]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error updating product category", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function destroy($id)
    {
        $administritiveDivisions = AdministrativeDivision::findOrFail($id);
        $administritiveDivisions->delete();

        return response()->json(null, 204);
        return response()->json(["statusCode" => 204, "success" => true, "message"=>"Administritive Division deleted successfully.","data" => $administritiveDivisions]);
    }
}
