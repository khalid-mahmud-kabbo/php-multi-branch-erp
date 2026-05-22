<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Contracts\View\View;
use App\Http\Requests\BranchRequest;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Database\QueryException;

use App\Models\Branch;
use App\Models\User;


class BranchController extends Controller
{



       /** @var User $user */  // ← tells Intelephense auth()->user()
    public function switchBranch(Branch $branch)
    {
        /** @var User $user */
        $user = auth()->user();

        abort_unless($user->isSuperAdmin() || $user->isManager(), 403);

        session(['branch_id' => $branch->id]);

        return redirect()->back()->with('success', 'Switched to ' . $branch->name);
    }


    /**
     * Create a new carrier.
     *
     * @return \Illuminate\View\View
     */
    public function create() : View {
        return view('branch.create');
    }

    /**
     * Edit a carrier.
     *
     * @param int $id The ID of the carrier to edit.
     * @return \Illuminate\View\View
     */
    public function edit($id) : View {

        $branch = Branch::find($id);

        return view('branch.edit', compact('branch'));
    }
    /**
     * Return JsonResponse
     * */
    public function store(BranchRequest $request) : JsonResponse {

        $filename = null;

        // Get the validated data from the CarrierRequest
        $validatedData = $request->validated();

        // Create a new tax record using Eloquent and save it
        $newPaymentType = Branch::create($validatedData);

        return response()->json([
            'status'  => true,
            'message' => __('app.record_saved_successfully'),
            'data'  => [
                'id' => $newPaymentType->id,
                'name' => $newPaymentType->name,
            ]
        ]);
    }

    /**
     * Return JsonResponse
     * */
    public function update(BranchRequest $request) : JsonResponse {
        $validatedData = $request->validated();

        // Save the tax details
        $carrier = Branch::findOrFail($validatedData['id']);
        $carrier->fill($validatedData);
        $carrier->save(); // This will trigger the 'updated' event

        return response()->json([
            'message' => __('app.record_updated_successfully'),
        ]);
    }

    public function list() : View {
        return view('branch.list');
    }

    public function datatableList(Request $request){

        $data = Branch::query();

        return DataTables::of($data)
                    ->addIndexColumn()
                    ->addColumn('created_at', function ($row) {
                        return $row->created_at->format(app('company')['date_format']);
                    })
                    ->addColumn('username', function ($row) {
                        return $row->user->username??'';
                    })
                    ->addColumn('name', function ($row) {
                        return $row->name;
                    })
                    ->addColumn('code', function ($row) {
                        return $row->code;
                    })
                    ->addColumn('phone', function ($row) {
                        return $row->code;
                    })
                    ->addColumn('email', function ($row) {
                        return $row->code;
                    })
                    ->addColumn('action', function($row){
                            $id = $row->id;

                            $editUrl = route('branch.edit', ['id' => $id]);
                            $deleteUrl = route('branch.delete', ['id' => $id]);


                            $actionBtn = '<div class="dropdown ms-auto">
                            <a class="dropdown-toggle dropdown-toggle-nocaret" href="#" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded font-22 text-option"></i>
                            </a>
                            <ul class="dropdown-menu">';
                                $actionBtn .= '<li>
                                    <a class="dropdown-item" href="' . $editUrl . '"><i class="bi bi-trash"></i><i class="bx bx-edit"></i> '.__('app.edit').'</a>
                                </li>';
                                $actionBtn .=  '<li>
                                    <button type="button" class="dropdown-item text-danger deleteRequest " data-delete-id='.$id.'><i class="bx bx-trash"></i> '.__('app.delete').'</button>
                                </li>';
                            $actionBtn .= '</ul>
                        </div>';
                            return $actionBtn;
                    })
                    ->rawColumns(['action'])
                    ->make(true);
    }

    public function delete(Request $request) : JsonResponse{

        $selectedRecordIds = $request->input('record_ids');

        // Perform validation for each selected record ID
        foreach ($selectedRecordIds as $recordId) {
            $record = Branch::find($recordId);
            if (!$record) {
                // Invalid record ID, handle the error (e.g., show a message, log, etc.)
                return response()->json([
                    'status'    => false,
                    'message' => __('app.invalid_record_id',['record_id' => $recordId]),
                ]);

            }
            // You can perform additional validation checks here if needed before deletion
        }

        /**
         * All selected record IDs are valid, proceed with the deletion
         * Delete all records with the selected IDs in one query
         * */
        try{
            Branch::whereIn('id', $selectedRecordIds)
                ->chunk(100, function ($carriers) {
                    foreach ($carriers as $carrier) {
                        $carrier->delete();
                    }
                });

        }catch (QueryException $e){
            return response()->json(['message' => __('app.cannot_delete_records')], 422);
        }


        return response()->json([
            'status'    => true,
            'message' => __('app.record_deleted_successfully'),
        ]);
    }

}
