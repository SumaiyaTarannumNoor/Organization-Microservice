<?php

namespace App\Http\Controllers;

use App\Models\DistributionAssignedArea;
use Illuminate\Http\Request;

class DistributionAssignedAreaController extends Controller
{
    public function index()
    {
        $assignedAreas = DistributionAssignedArea::all();

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Distribution Assigned Areas showing successfully.","data" => $assignedAreas]);
    }

    public function show($id)
    {
        $assignedAreas = DistributionAssignedArea::findOrFail($id);

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Distribution Assigned Area showing successfully.","data" => $assignedAreas]);
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'distributor_id' => 'nullable|exists:distributors,id',
                'area_id' => 'nullable|exists:areas,id',
                'create_by' => 'nullable|string|max:255',
                'modified_by' => 'nullable|string|max:255',
                'modified_at' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $assignedAreas = DistributionAssignedArea::create($request->all());

        return response()->json(["statusCode" => 201, "success" => true, "message"=>"Distribution Assigned Areas created successfully.","data" => $assignedAreas]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error creating distribution assigned area", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $request->validate([
                'distributor_id' => 'nullable|exists:distributors,id',
                'area_id' => 'nullable|exists:areas,id',
                'create_by' => 'nullable|string|max:255',
                'modified_by' => 'nullable|string|max:255',
                'modified_at' => 'nullable|string|max:255',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $assignedAreas = DistributionAssignedArea::findOrFail($id);
        $assignedAreas->update($request->all());

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Distribution Assigned Areas updated successfully.","data" => $assignedAreas]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error updating distribution assigned area", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function destroy($id)
    {
        $assignedAreas = DistributionAssignedArea::findOrFail($id);
        $assignedAreas->delete();

        return response()->json(["statusCode" => 204, "success" => true, "message"=>"Distribution Assigned Areas deleted successfully.","data" => $assignedAreas]);
    }
}
