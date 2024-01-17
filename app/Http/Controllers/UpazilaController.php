<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Upazila;

class UpazilaController extends Controller
{
    //
    public function index()
    {
        $upazilas = Upazila::with(["district", "distributor"])->get();

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Upazilas showing successfully.","data" => $upazilas]);
    }

    public function show($id)
    {
        $upazilas = Upazila::findOrFail($id);

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Upazila showing successfully.","data" => $upazilas]);
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'district_id' => 'nullable|exists:district,id',
                'upazila_name' => 'required|string|max:255',
                'status' => 'nullable|boolean',
                'created_by' => 'nullable|string|max:255',
                'updated_by' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);


        $upazilas = Upazila::create($request->all());

        return response()->json(["statusCode" => 201, "success" => true, "message"=>"Upazila created successfully.","data" => $upazilas]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error creating upazila information", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $request->validate([
                'district_id' => 'nullable|exists:district,id',
                'upazila_name' => 'required|string|max:255',
                'status' => 'nullable|boolean',
                'created_by' => 'nullable|string|max:255',
                'updated_by' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $upazilas = Upazila::findOrFail($id);
        $upazilas->update($request->all());

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Upazila updated successfully.","data" => $upazilas]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error updating upazila information", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function destroy($id)
    {
        $upazilas = Upazila::findOrFail($id);
        $upazilas->delete();

        return response()->json(["statusCode" => 204, "success" => true, "message"=>"Upazila deleted successfully.","data" => $upazilas]);
    }
}
