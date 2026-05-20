<?php

namespace App\Http\Controllers\Reports;

use App\Traits\FormatNumber;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Yajra\DataTables\Facades\DataTables;
use App\Models\Items\Item;

class LowStockController extends Controller
{
    use FormatNumber;

public function lowStock(Request $request)
{
    $lowStockItems = $this->getLowStockItemRecords();
    

    return view('report.stock.low-stock', compact(
        'lowStockItems',
    ));
}

public function datatableList(Request $request)
{
    $warehouseId = $request->warehouse_id;

    $data = Item::with(['user', 'brand', 'category', 'itemGeneralQuantities'])
        ->whereColumn('current_stock', '<=', 'min_stock')
        ->where('min_stock', '>', 0)
        ->when($request->item_category_id, function ($query) use ($request) {
            return $query->where('item_category_id', $request->item_category_id);
        })
        ->when($request->warehouse_id, function ($query) use ($request) {
            return $query->whereHas('itemGeneralQuantities', function ($q) use ($request) {
                $q->where('warehouse_id', $request->warehouse_id);
            });
        })
        ->when($request->brand_id, function ($query) use ($request) {
            return $query->where('brand_id', $request->brand_id);
        })
        ->when($request->tracking_type, function ($query) use ($request) {
            return $query->where('tracking_type', $request->tracking_type);
        })
        ->when(isset($request->is_service), function ($query) use ($request) {
            if ($request->is_service == 0) {
                return $query->where('is_service', 0);
            } else if ($request->is_service == 1) {
                return $query->where('is_service', 1);
            }
        })
        ->when($request->created_by, function ($query) use ($request) {
            return $query->where('created_by', $request->created_by);
        });

    return DataTables::of($data)
        ->filter(function ($query) use ($request) {
            if ($request->has('search')) {
                $searchTerm = $request->search['value'];
                $query->where(function ($q) use ($searchTerm) {
                    $q->where('name', 'like', "%{$searchTerm}%")
                      ->orWhere('description', 'like', "%{$searchTerm}%")
                      ->orWhere('sku', 'like', "%{$searchTerm}%")
                      ->orWhere('item_code', 'like', "%{$searchTerm}%")
                      ->orWhere('tracking_type', 'like', "%{$searchTerm}%")
                      ->orWhereHas('brand', function ($brandQuery) use ($searchTerm) {
                          $brandQuery->where('name', 'like', "%{$searchTerm}%");
                      })
                      ->orWhereHas('category', function ($categoryQuery) use ($searchTerm) {
                          $categoryQuery->where('name', 'like', "%{$searchTerm}%");
                      })
                      ->orWhereHas('user', function ($userQuery) use ($searchTerm) {
                          $userQuery->where('username', 'like', "%{$searchTerm}%");
                      });
                });
            }
        })
        ->addIndexColumn()
        ->addColumn('created_at', function ($row) {
            return $row->created_at ? $row->created_at->format(app('company')['date_format']) : '';
        })
        ->addColumn('username', function ($row) {
            return $row->user->username ?? '';
        })
        ->editColumn('tracking_type', function ($row) {
            return ucfirst($row->tracking_type);
        })
        ->editColumn('min_stock', function ($row) {
            return $this->formatQuantity($row->min_stock);
        })
        ->editColumn('current_stock', function ($row) use ($warehouseId) {
            if ($warehouseId) {
                $warehouseQuantity = $row->itemGeneralQuantities->where('warehouse_id', $warehouseId)->first();
                $quantity = $warehouseQuantity ? $warehouseQuantity->quantity : 0;
            } else {
                $quantity = $row->current_stock;
            }
            return $this->formatQuantity($quantity);
        })
        ->addColumn('brand_name', function ($row) {
            return $row->brand->name ?? '';
        })
        ->addColumn('category_name', function ($row) {
            return $row->category->name ?? '';
        })
        ->addColumn('action', function ($row) {
            $id = $row->id;
            $editUrl = route('item.edit', ['id' => $id]);
            $transactionUrl = route('item.transaction.list', ['id' => $id]);
            return '<div class="dropdown ms-auto">
                        <a class="dropdown-toggle dropdown-toggle-nocaret" href="#" data-bs-toggle="dropdown"><i class="bx bx-dots-vertical-rounded font-22 text-option"></i></a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="' . $editUrl . '"><i class="bx bx-edit"></i> ' . __('app.edit') . '</a></li>
                            <li><a class="dropdown-item" href="' . $transactionUrl . '"><i class="bx bx-transfer-alt"></i> ' . __('app.transactions') . '</a></li>
                            <li><button type="button" class="dropdown-item text-danger deleteRequest" data-delete-id="' . $id . '"><i class="bx bx-trash"></i> ' . __('app.delete') . '</button></li>
                        </ul>
                    </div>';
        })
        ->rawColumns(['action'])
        ->make(true);
}


function getLowStockItemRecords()
    {
        return Item::with('baseUnit')
            ->whereColumn('current_stock', '<=', 'min_stock')
            ->where('min_stock', '>', 0)
            ->orderByDesc('current_stock')
            ->latest()->paginate(10);
    }
}
