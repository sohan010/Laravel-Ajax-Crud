<table class="table table-hover table-bordered">
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
