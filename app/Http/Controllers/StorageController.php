<?php

namespace App\Http\Controllers;

use App\Models\Storage;
use Illuminate\Http\Request;

class StorageController extends Controller
{
    public function index()
    {
        $storages = Storage::all();

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Storages showing successfully.","data" => $storages]);

    }

    public function show($id)
    {
        $storages = Storage::findOrFail($id);

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Storage showing successfully.","data" => $storages]);
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'owner_id' => 'nullable|exists:owners,id',
                'type_id' => 'nullable|exists:types,id',
                'name' => 'required|string|max:255',
                'address' => 'required|string|max:255',
                'person_in_charge' => 'required|string|max:255',
                'email' => 'required|email|max:255',
                'telephone' => 'required|string|max:20',
                'mobile' => 'required|string|max:20',
                'status' => 'nullable|boolean',
                'create_by' => 'nullable|string|max:255',
                'modified_by' => 'nullable|string|max:255',
                'modified_at' => 'nullable|date',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $storages = Storage::create($request->all());

        return response()->json(["statusCode" => 201, "success" => true, "message"=>"Storage created successfully.","data" => $storages]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error creating storage information", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $request->validate([
                'owner_id' => 'nullable|exists:owners,id',
                'type_id' => 'nullable|exists:types,id',
                'name' => 'required|string|max:255',
                'address' => 'required|string|max:255',
                'person_in_charge' => 'required|string|max:255',
                'email' => 'required|email|max:255',
                'telephone' => 'required|string|max:20',
                'mobile' => 'required|string|max:20',
                'status' => 'nullable|boolean',
                'create_by' => 'nullable|string|max:255',
                'modified_by' => 'nullable|string|max:255',
                'modified_at' => 'nullable|date',
                'ip' => 'nullable|ip',
                'browser' => 'nullable|string|max:255',
            ]);

        $storages = Storage::findOrFail($id);
        $storages->update($request->all());

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Storage updated successfully.","data" => $storages]);
        }
        catch (ValidationException $e) {
            // Handle validation errors
            return response()->json(["message" => "Validation failed", "errors" => $e->errors(), "statusCode" => 422, "success" => false]);

        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(["message" => "Error updating storage information", "error" => $e->getMessage(), "statusCode" => 500, "success" => false]);
        }
    }

    public function destroy($id)
    {
        $storages = Storage::findOrFail($id);
        $storages->delete();

        return response()->json(["statusCode" => 200, "success" => true, "message"=>"Storage deleted successfully.","data" => $storages]);
    }
}
