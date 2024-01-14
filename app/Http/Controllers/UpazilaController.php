<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Upazila;

class UpazilaController extends Controller
{
    //
    public function index()
    {
        $upazilas = Upazila::all();

        return response()->json($upazilas, 200);
    }

    public function show($id)
    {
        $upazila = Upazila::findOrFail($id);

        return response()->json($upazila, 200);
    }

    public function store(Request $request)
    {
        $upazila = Upazila::create($request->all());

        return response()->json($upazila, 201);
    }

    public function update(Request $request, $id)
    {
        $upazila = Upazila::findOrFail($id);
        $upazila->update($request->all());

        return response()->json($upazila, 200);
    }

    public function destroy($id)
    {
        $upazila = Upazila::findOrFail($id);
        $upazila->delete();

        return response()->json(null, 204);
    }
}
