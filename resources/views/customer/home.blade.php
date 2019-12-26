@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                      <div class="row">
                        <div class="col-md-8 mt-1">
                          <h4 class="card-title" style="margin-left:20px"> <i class="fa fa-user"></i> Customer Data</h4>
                      </div>
                    <div class="col-md-4 text-right mt-1">
                      <a class="btn btn-sm btn-primary" href="#" style="margin-right:20px"
                       data-toggle="modal" data-target="#addcustomer"> <i class="fa fa-plus-circle"></i> Add Customer</a>
                  </div
             </div>
           </div>

                <div class="card-body table-responsive">
                  <table class="table table-hover table-bordered" id="showAllDataHere">
                    <thead class="bg-dark text-light">
                        <th>SL#</th>
                        <th>Name</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>City</th>
                        <th>Register Date</th>
                        <th>Manage</th>
                    </thead>
                      <tbody>
                        @foreach($data as $key=>$show)
                          <tr>
                            <td>{{$key+1}}</td>
                            <td>{{$show->name}}</td>
                            <td>{{$show->phone}}</td>
                            <td>{{$show->email}}</td>
                            <td>{{$show->city}}</td>
                            <td>{{date("d-m-Y",strtotime($show->created_at))}}</td>
                            <td>
                <a id="view" data-id="{{$show->id}}" class="btn btn-sm btn-success" href="view/customer/data">View</a>
                <a id="edit" data-id="{{$show->id}}" class="btn btn-sm btn-primary" href="edit/customer/data">Edit</a>

                <a onclick="return confirm('Are you sure to delete ?')" id="delete" data-id="{{$show->id}}"
                 class="btn btn-sm btn-danger" href="delete/customer/data">Delete</a>
                            </td>
                          </tr>
                          @endforeach
                      </tbody>
                  </table>
                    {!! $data->render()!!}
                </div>

            </div>
        </div>
    </div>
</div>

<div id="getalldata" data-url="{{url('get/customer/data')}}"></div>
<div id="getalldatabypagination" data-url="{{url('get/customer/data/by/pagination')}}"></div>
<!-- Add Customer Modal -->

<div class="modal fade" id="addcustomer" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <form action="{{url('add/customer/data')}}" method="POST" id="addcustomerform">
        @csrf
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel"> <i class="fa fa-plus-circle"></i> Add Customer Data</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>

            <div class="modal-body">

              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text" id="basic-addon1"><i class="fa fa-user"></i></span>
                </div>
                <input type="text" class="form-control" placeholder="Name" name ="name" aria-describedby="basic-addon1">
              </div>

                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1"><i class="fa fa-phone"></i></span>
                  </div>
                  <input type="text" class="form-control" placeholder="Phone" name="phone" aria-describedby="basic-addon1">
                </div>

                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon1"><i class="fa fa-envelope"></i></span>
                    </div>
                    <input type="email" class="form-control" placeholder="Email" name="email" aria-describedby="basic-addon1">
                  </div>

                    <div class="input-group mb-3">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1"><i class="fa fa-map-marker"></i></span>
                      </div>
                      <input type="text" class="form-control" placeholder="City" name="city" aria-describedby="basic-addon1">
                    </div>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary">Save changes</button>
          </div>
        </div>

    </form>
  </div>
</div>
<!-- Add Customer Modal -->


<!-- View Customer Modal -->

<div class="modal fade" id="viewcustomer" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">

        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="customername"> <i class="fa fa-plus-circle"></i></h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>

            <div class="modal-body">
              <div class="cname"></div>
              <div class="cphone"></div>
              <div class="cemail"></div>
              <div class="ccity"></div>


          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          </div>
        </div>

  </div>
</div>
<!-- View Customer Modal -->


<!-- Update/Edit Customer Modal -->

<div class="modal fade" id="updatecustomer" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <form action="{{url('update/customer/data')}}" method="POST" id="updatecustomerform">
        @csrf
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="updatecustomerTitle"> <i class="fa fa-plus-circle"></i></h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>

            <div class="modal-body">
              <input type="hidden" name="id" id="customerid">
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text" id="basic-addon1"><i class="fa fa-user"></i></span>
                </div>
                <input id="cname" type="text" class="form-control" placeholder="Name" name ="name" aria-describedby="basic-addon1">
              </div>

                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon1"><i class="fa fa-phone"></i></span>
                  </div>
                  <input id="cphone" type="text" class="form-control" placeholder="Phone" name="phone" aria-describedby="basic-addon1">
                </div>

                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon1"><i class="fa fa-envelope"></i></span>
                    </div>
                    <input id="cemail" type="email" class="form-control" placeholder="Email" name="email" aria-describedby="basic-addon1">
                  </div>

                    <div class="input-group mb-3">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1"><i class="fa fa-map-marker"></i></span>
                      </div>
                      <input id="ccity" type="text" class="form-control" placeholder="City" name="city" aria-describedby="basic-addon1">
                    </div>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary">Save changes</button>
          </div>
        </div>

    </form>
  </div>
</div>
<!-- Update/Edit Customer Modal -->
@endsection
