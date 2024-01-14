<?php

namespace App\Http\Controllers;

use App\Models\Storage;
use Illuminate\Http\Request;

class StorageController extends Controller
{
    public function index()
    {
        $storages = Storage::all();

        return response()->json($storages, 200);
    }

    public function show($id)
    {
        $storage = Storage::findOrFail($id);

        return response()->json($storage, 200);
    }

    public function store(Request $request)
    {
        $storage = Storage::create($request->all());

        return response()->json($storage, 201);
    }

    public function update(Request $request, $id)
    {
        $storage = Storage::findOrFail($id);
        $storage->update($request->all());

        return response()->json($storage, 200);
    }

    public function destroy($id)
    {
        $storage = Storage::findOrFail($id);
        $storage->delete();

        return response()->json(null, 204);
    }
}
