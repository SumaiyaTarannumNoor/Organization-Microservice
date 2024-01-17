<?php

namespace App\Http\Controllers;

use App\Models\District;
use Illuminate\Http\Request;

class DistrictController extends Controller
{
    public function index()
    {
        $districts = District::with(["division", "upazilas"])->get();

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Districts showing successfully.","data" => $districts]);
    }

    public function show($id)
    {
        $districts = District::findOrFail($id);

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"District showing successfully.","data" => $districts]);

    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'division_id' => 'nullable|exists:administritivedivision,id',
                'district_name' => 'required|string|max:255',
                'status' => 'nullable|boolean',
                'created_by' => 'nullable|string|max:255',
                'updated_by' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $districts = District::create($request->all());

        return response()->json(["statusCode" => 201, "success" => true, "message"=>"District created successfully.","data" => $districts]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error creating district information", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $request->validate([
                'division_id' => 'nullable|exists:administritivedivision,id',
                'district_name' => 'required|string|max:255',
                'status' => 'nullable|boolean',
                'created_by' => 'nullable|string|max:255',
                'updated_by' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);
        $districts = District::findOrFail($id);
        $districts->update($request->all());

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"District updated successfully.","data" => $districts]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error updating district information", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function destroy($id)
    {
        $districts = District::findOrFail($id);
        $districts->delete();

        return response()->json(["statusCode" => 204, "success" => true, "message"=>"District deleted successfully.","data" => $districts]);

    }
}
