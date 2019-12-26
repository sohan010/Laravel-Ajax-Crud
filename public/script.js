$(function(){
  //Add customer jquery
  $("#addcustomerform").on("submit", function(e){
      e.preventDefault();
      var form = $(this);
      var url = form.attr("action");
      var type = form.attr("method");
      var data =  form.serialize();

  //Add customer Ajax Code
      $.ajax({
        url: url,
        data: data,
        type: type,
        dataType: "JSON",
        beforeSend: function(){
          $(".load").fadeIn();
        },
        success: function(data){
        if(data == "success"){
          $("#addcustomer").modal("hide");
           swal("Great", "Customer Data Add Success", "success");
           form[0].reset();
           return getCustomerData();
        }
        },
        complete: function(){
            $(".load").fadeOut();
        },

      });
  });
      //Showing Index  customer Ajax Code
      function getCustomerData(){
       var url = $("#getalldata").data("url");
        $.ajax({

          url: url,
          type:"GET",
          dataType: "HTML",
          success: function(response){
            $("#showAllDataHere").html(response);
          },
        });
      }
        //View customer Ajax Code with jquery
        $(document).on("click","#view", function(e){
          e.preventDefault();
          var id = $(this).data("id");
          var url = $(this).attr("href");

            $.ajax({
              url:url,
              data:{id:id},
              type:"GET",
              dataType:"JSON",
              success: function(response){
                if($.isEmptyObject(response)!=null){
                  $("#viewcustomer").modal("show");
                  $("#customername").text(response.name + "'s Data");
                  $(".cname").text("Name : " + response.name);
                  $(".cphone").text("Phone : " + response.phone);
                  $(".cemail").text("Email : " + response.email);
                  $(".ccity").text("City : " + response.city);

                }
              },
          });

        });

          //Edit customer Ajax Code with jquery
          $(document).on("click","#edit", function(arg){
            arg.preventDefault();
            var id = $(this).data("id");
            var url = $(this).attr("href");

            $.ajax({
              url: url,
              data:{id:id},
              type: "GET",
              dataType:"JSON",
              success(response){
                $("#updatecustomer").modal("show");
                $("#updatecustomerTitle").text("Update " + response.name + "'s Data");
                $("#cname").val(response.name);
                $("#cphone").val(response.phone);
                $("#cemail").val(response.email);
                $("#ccity").val(response.city);
                $("#customerid").val(response.id);
              }
            });

          });

          //Update customer Ajax Code with jquery
          $("#updatecustomerform").on("submit", function(arg){
            arg.preventDefault();
              var form = $(this);
              var url = form.attr("action");
              var type = form.attr("method");
              var data = form.serialize();

              $.ajax({
                url: url,
                type:type,
                dataType:"JSON",
                data:data,
                beforeSend:function(){
                    $(".load").fadeIn();
                },
                success:function(response){

                  if(response == "success"){
                   swal("Updated", "Customer Data Update Success", "success");
                   $("#updatecustomer").modal("hide");
                     return getCustomerData();
                  }
                },
                complete: function(){
                    $(".load").fadeOut();
                },

              });

          });

            //Delete customer Ajax Code with jquery
            $(document).on("click","#delete", function(arg){
                arg.preventDefault();
                var id = $(this).data("id");
                var url = $(this).attr("href");

                $.ajax({
                  url:url,
                  data:{id:id},
                  type:"GET",
                  dataType:"JSON",
                  success(response){
                   swal("Delete", "Customer Data Delete Success", "success");
                  return getCustomerData();
                  },
                });
            });

            //Pagination Ajax Code with jquery
            $(document).on("click",".pagination li a", function(e){
              e.preventDefault();
                var page = $(this).attr("href");
                var pagenumber = page.split("?page=")[1];
                return getPagination(pagenumber);
            });

            function getPagination(pagenumber){
              var geturl = $("#getalldatabypagination").data("url");
              var url = geturl+"?page=" + pagenumber;

                $.ajax({
                    url: url,
                    type:"GET",
                    dataType:"HTML",
                    success: function(response){
                     $("#showAllDataHere").html(response);
                    }
                });
             }
          });
