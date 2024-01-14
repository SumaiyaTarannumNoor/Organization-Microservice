<?php

namespace App\Http\Controllers;


use App\Models\Distributor;
use Illuminate\Http\Request;

class DistributorController extends Controller
{
    public function index()
    {
        $distributors = Distributor::all();

        return response()->json($distributors, 200);
    }

    public function show($id)
    {
        $distributor = Distributor::findOrFail($id);

        return response()->json($distributor, 200);
    }

    public function store(Request $request)
    {
        $distributor = Distributor::create($request->all());

        return response()->json($distributor, 201);
    }

    public function update(Request $request, $id)
    {
        $distributor = Distributor::findOrFail($id);
        $distributor->update($request->all());

        return response()->json($distributor, 200);
    }

    public function destroy($id)
    {
        $distributor = Distributor::findOrFail($id);
        $distributor->delete();

        return response()->json(null, 204);
    }

    public function getDistributorsByIds(Request $request)
    {
        $selectedIds = $request->input('ids'); // Assuming you're passing selected_ids as an array in the request

        // Validate input if necessary

        $distributors = Distributor::whereIn('id', $selectedIds)->get();

        return response()->json(['distributors' => $distributors], 200);
    }
}
