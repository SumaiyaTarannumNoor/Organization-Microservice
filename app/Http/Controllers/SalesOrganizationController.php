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


        return response()->json($salesOrganizations, 200);
    }

    public function show($id)
    {
        $salesOrganization = SalesOrganization::findOrFail($id);

        return response()->json($salesOrganization, 200);
    }

    public function store(Request $request)
    {
        $salesOrganization = SalesOrganization::create($request->all());

        return response()->json($salesOrganization, 201);
    }

    public function update(Request $request, $id)
    {
        $salesOrganization = SalesOrganization::findOrFail($id);
        $salesOrganization->update($request->all());

        return response()->json($salesOrganization, 200);
    }

    public function destroy($id)
    {
        $salesOrganization = SalesOrganization::findOrFail($id);
        $salesOrganization->delete();

        return response()->json(null, 204);
    }
}
