<?php

namespace App\Http\Controllers;

use App\Models\DistributionAssignedArea;
use Illuminate\Http\Request;

class DistributionAssignedAreaController extends Controller
{
    public function index()
    {
        $assignedAreas = DistributionAssignedArea::all();

        return response()->json($assignedAreas, 200);
    }

    public function show($id)
    {
        $assignedArea = DistributionAssignedArea::findOrFail($id);

        return response()->json($assignedArea, 200);
    }

    public function store(Request $request)
    {
        $assignedArea = DistributionAssignedArea::create($request->all());

        return response()->json($assignedArea, 201);
    }

    public function update(Request $request, $id)
    {
        $assignedArea = DistributionAssignedArea::findOrFail($id);
        $assignedArea->update($request->all());

        return response()->json($assignedArea, 200);
    }

    public function destroy($id)
    {
        $assignedArea = DistributionAssignedArea::findOrFail($id);
        $assignedArea->delete();

        return response()->json(null, 204);
    }
}
