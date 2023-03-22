<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TestController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Pos\UnitController;
use App\Http\Controllers\Pos\StockController;
use App\Http\Controllers\Pos\DefaultController;
use App\Http\Controllers\Pos\InvoiceController;
use App\Http\Controllers\Pos\ProductController;
use App\Http\Controllers\Pos\CategoryController;
use App\Http\Controllers\Pos\CustomerController;
use App\Http\Controllers\Pos\PurchaseController;
use App\Http\Controllers\Pos\SupplierController;


Route::get('/', function () {
    return redirect('/dashboard');
});
//Admin All Route
Route::middleware(['auth'])->group(function () {
    Route::controller(AdminController::class)->group(function(){ 
        Route::get('/admin/logout', 'destroy')->name('admin.logout');
        Route::get('/admin/profile', 'profile')->name('admin.profile');
        Route::get('/edit/profile', 'Editprofile')->name('edit.profile');
        Route::post('/store/profile', 'Storeprofile')->name('store.profile');
        Route::get('/change/password', 'ChangePassword')->name('change.password');
        Route::post('/update/password', 'UpdatePassword')->name('update.password');
    });
});  
//Supplier
Route::middleware(['auth'])->group(function () {
    Route::controller(SupplierController::class)->group(function(){ 
        Route::get('/supplier/all', 'SupplierAll')->name('supplier.all');
        Route::get('/supplier/add', 'SupplierAdd')->name('supplier.add');
        Route::post('/supplier/store', 'SupplierStore')->name('supplier.store');
        Route::get('/supplier/edit/{id}', 'SupplierEdit')->name('supplier.edit');
        Route::post('/supplier/update/{id}', 'SupplierUpdate')->name('supplier.update');
        Route::get('/supplier/delete/{id}', 'SupplierDelete')->name('supplier.delete');

    });
});  
//Customer
Route::middleware(['auth'])->group(function () {
    Route::controller(CustomerController::class)->group(function(){ 
        Route::get('/customer/all', 'CustomerAll')->name('customer.all');
        Route::get('/customer/add', 'CustomerAdd')->name('customer.add');
        Route::post('/customer/store', 'CustomerStore')->name('customer.store');
        Route::get('/customer/edit/{id}', 'CustomerEdit')->name('customer.edit');
        Route::post('/customer/update/{id}', 'CustomerUpdate')->name('customer.update');
        Route::get('/customer/delete/{id}', 'CustomerDelete')->name('customer.delete');
        Route::get('/credit/customer', 'CreditCustomer')->name('credit.customer');
        Route::get('/credit/customer.print.pdf', 'CreditCustomerPrintPdf')->name('credit.customer.print.pdf');
        Route::get('/customer/edit/invoice/{invoice_id}', 'CustomerEditInvoice')->name('customer.edit.invoice');
        Route::post('/customer/update/invoice/{invoice_id}', 'CustomerUpdateInvoice')->name('customer.update.invoice');
    });
});
//Unit
Route::middleware(['auth'])->group(function () {
    Route::controller(UnitController::class)->group(function(){ 
        Route::get('/unit/all', 'UnitAll')->name('unit.all');
        Route::get('/unit/add', 'UnitAdd')->name('unit.add');
        Route::post('/unit/store', 'UnitStore')->name('unit.store');
        Route::get('/unit/edit/{id}', 'UnitEdit')->name('unit.edit');
        Route::post('/unit/update/{id}', 'UnitUpdate')->name('unit.update');
        Route::get('/unit/delete/{id}', 'UnitDelete')->name('unit.delete');
    });
});
//category
Route::middleware(['auth'])->group(function () {
    Route::controller(CategoryController::class)->group(function(){ 
        Route::get('/category/all', 'CategoryAll')->name('category.all');
        Route::get('/category/add', 'CategoryAdd')->name('category.add');
        Route::post('/category/store', 'CategoryStore')->name('category.store');
        Route::get('/category/edit/{id}', 'CategoryEdit')->name('category.edit');
        Route::post('/category/update/{id}', 'CategoryUpdate')->name('category.update');
        Route::get('/category/delete/{id}', 'CategoryDelete')->name('category.delete');
    });
});
//product
Route::middleware(['auth'])->group(function () {
    Route::controller(ProductController::class)->group(function(){ 
        Route::get('/product/all', 'ProductAll')->name('product.all');
        Route::get('/product/add', 'ProductAdd')->name('product.add');
        Route::post('/product/store', 'ProductStore')->name('product.store');
        Route::get('/product/edit/{id}', 'ProductEdit')->name('product.edit');
        Route::post('/product/update/{id}', 'ProductUpdate')->name('product.update');
        Route::get('/product/delete/{id}', 'ProductDelete')->name('product.delete');
    });
});
//purchase
Route::middleware(['auth'])->group(function () {
    Route::controller(PurchaseController::class)->group(function(){ 
        Route::get('/purchase/all', 'PurchaseAll')->name('purchase.all');
        Route::get('/purchase/add', 'PurchaseAdd')->name('purchase.add');
        Route::post('/purchase/store', 'PurchaseStore')->name('purchase.store');
        //Route::get('/purchase/edit/{id}', 'PurchaseEdit')->name('purchase.edit');
        //Route::post('/purchase/update/{id}', 'PurchaseUpdate')->name('purchase.update');
        Route::get('/purchase/delete/{id}', 'PurchaseDelete')->name('purchase.delete');
        Route::get('/purchase/pending', 'PurchasePending')->name('purchase.pending');
        Route::get('/purchase/approve/{id}', 'PurchaseApprove')->name('purchase.approve');
        Route::get('/daily/purchase/report', 'DailyPurchaseReport')->name('daily.purchase.report');
        Route::get('/daily/purchase/pdf', 'DailyPurchasePdf')->name('daily.purchase.pdf');
    });
});
//Default Controller
Route::controller(DefaultController::class)->group(function(){ 
    Route::get('/get-category', 'GetCategory')->name('get-category');
    Route::get('/get-product', 'GetProduct')->name('get-product');
    Route::get('/get-product-stock', 'GetProductStock')->name('check-product-stock');

});
//Invoice
Route::middleware(['auth'])->group(function () {
    Route::controller(InvoiceController::class)->group(function(){ 
        Route::get('/invoice/all', 'InvoiceAll')->name('invoice.all');
        Route::get('/invoice/add', 'InvoiceAdd')->name('invoice.add');
        Route::post('/invoice/store', 'InvoiceStore')->name('invoice.store');
        Route::get('/invoice/pending/list', 'PendingList')->name('invoice.pending.list');
        Route::get('/invoice/delete/{id}', 'InvoiceDelete')->name('invoice.delete');
        Route::get('/invoice/approve/{id}', 'InvoiceApprove')->name('invoice.approve');
        Route::post('/approval/store/{id}', 'ApprovalStore')->name('approval.store');
        Route::get('/print/invoice/list', 'PrintInvoiceList')->name('print.invoice.list');
        Route::get('/print/invoice/{id}', 'PrintInvoice')->name('print.invoice');
        Route::get('/daily/invoice/report', 'DailyInvoiceReport')->name('daily.invoice.report');
        Route::get('/daily/invoice/pdf', 'DailyInvoicePdf')->name('daily.invoice.pdf');

    });
});

//Stock
Route::middleware(['auth'])->group(function () {
    Route::controller(StockController::class)->group(function(){ 
        Route::get('/stock/report', 'StockReport')->name('stock.report');
        Route::get('/stock/report/pdf', 'StockReportPdf')->name('stock.report.pdf');
        Route::get('/stock/supplier/wise', 'StockSupplierWise')->name('stock.supplier.wise');
        Route::get('/stock/supplier/pdf', 'StockSupplierPdf')->name('supplier.wise.pdf');
        Route::get('/stock/product/pdf', 'ProductWisePdf')->name('product.wise.pdf');
    });
});

//Test
Route::middleware(['auth'])->group(function () {
    Route::controller(TestController::class)->group(function(){ 
        Route::get('/test/all', 'TestAll')->name('test.all');
        //Route::get('/test/add', 'TestAdd')->name('test.add');
        // Route::post('/test/store', 'TestStore')->name('test.store');
        // Route::get('/test/edit/{id}', 'TestEdit')->name('test.edit');
        // Route::post('/test/update/{id}', 'TestUpdate')->name('test.update');
        // Route::get('/test/delete/{id}', 'TestDelete')->name('test.delete');

    });
}); 

Route::get('/dashboard', function () {
    return view('admin.index');
})->middleware(['auth','verified'])->name('dashboard');

require __DIR__.'/auth.php';
