

<div class="vertical-menu">

    <div data-simplebar class="h-100">

       

        <!--- Sidemenu -->
        <div id="sidebar-menu">
            <!-- Left Menu Start -->
            <ul class="metismenu list-unstyled" id="side-menu">
                <li class="menu-title">Menu</li>

                <li>
                    <a href="{{ url('/dashboard') }}" class="waves-effect">
                      <i class="ri-home-fill"></i> <span class="badge rounded-pill bg-success float-end">3</span>
                        <span>Dashboard</span>
                    </a>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                      <i class="ri-hotel-fill"></i> 
                    <span>Manage Suppliers</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                      <li><a href="{{ route('supplier.all') }}">All Suppliers</a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0)" class="has-arrow waves-effect">
                      <i class="ri-shield-user-fill"></i>
                    <span>Manage Customers</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                      <li><a href="{{ route('customer.all') }}">All Customers</a></li>
                      <li><a href="{{ route('credit.customer') }}">Credit Customers</a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0)" class="has-arrow waves-effect">
                      <i class="ri-delete-back-fill"></i>
                    <span>Manage Units</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                      <li><a href="{{ route('unit.all') }}">All Unit</a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0)" class="has-arrow waves-effect">
                      <i class="ri-apps-2-fill"></i>
                    <span>Manage Category</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                      <li><a href="{{ route('category.all') }}">All Category</a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0)" class="has-arrow waves-effect">
                      <i class="ri-reddit-fill"></i>
                    <span>Manage Products</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                      <li><a href="{{ route('product.all') }}">All Product</a></li>
                    </ul>
                </li>

                <li>
                    <a href="javascript: void(0)" class="has-arrow waves-effect">
                      <i class="ri-oil-fill"></i>
                    <span>Manage Purchase</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="false">
                      <li><a href="{{ route('purchase.all') }}">All Purchase</a></li>
                      <li><a href="{{ route('purchase.pending') }}">Approval Purchase</a></li>
                      <li><a href="{{ route('daily.purchase.report') }}">Daily  Purchase Report</a></li>
                    </ul>
                </li>

                <li>
                  <a href="javascript: void(0)" class="has-arrow waves-effect">
                    <i class="ri-compass-2-fill"></i>
                  <span>Manage Invoice</span>
                  </a>
                  <ul class="sub-menu" aria-expanded="false">
                    <li><a href="{{ route('invoice.all') }}">All Invoice</a></li>
                    <li><a href="{{ route('invoice.pending.list') }}">Approval Invoice</a></li>   
                    <li><a href="{{ route('print.invoice.list') }}">Print Invoice List</a></li>
                    <li><a href="{{ route('daily.invoice.report') }}">Daily Invoice Report</a></li>      
                  </ul>
              </li>

              <li class="menu-title">Stock</li>
              <li>
                <a href="javascript: void(0)" class="has-arrow waves-effect">
                  <i class="ri-gift-fill"></i>
                <span>Manage Stock</span>
                </a>
                <ul class="sub-menu" aria-expanded="false">
                  <li><a href="{{ route('stock.report') }}">Stock Report</a></li>
                  <li><a href="{{ route('stock.supplier.wise') }}">Supplier / Product wise</a></li>   
                        
                </ul>
            </li>
            {{-- Test --}}
            {{-- <li>
              <a href="javascript: void(0)" class="has-arrow waves-effect">
              <i class="fa-thin fa-user"></i>
              <span>Test</span>
              </a>
              <ul class="sub-menu" aria-expanded="false">
                <li><a href="{{ route('test.all') }}">Test All</a></li>
              </ul>
          </li> --}}


            </ul>
        </div>
        <!-- Sidebar -->
    </div>
</div>