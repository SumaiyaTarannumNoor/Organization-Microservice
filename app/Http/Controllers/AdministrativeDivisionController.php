<?php

namespace App\Http\Controllers;

use App\Models\AdministrativeDivision;
use Illuminate\Http\Request;

class AdministrativeDivisionController extends Controller
{
    public function index()
    {
        $administritiveDivisions = AdministrativeDivision::with("districts")->get();

        return response()->json($administritiveDivisions, 200);
    }

    public function show($id)
    {
        $administritiveDivision = AdministrativeDivision::findOrFail($id);

        return response()->json($administritiveDivision, 200);
    }

    public function store(Request $request)
    {
        $administritiveDivision = AdministrativeDivision::create($request->all());

        return response()->json($administritiveDivision, 201);
    }

    public function update(Request $request, $id)
    {
        $administritiveDivision = AdministrativeDivision::findOrFail($id);
        $administritiveDivision->update($request->all());

        return response()->json($administritiveDivision, 200);
    }

    public function destroy($id)
    {
        $administritiveDivision = AdministrativeDivision::findOrFail($id);
        $administritiveDivision->delete();

        return response()->json(null, 204);
    }
}
