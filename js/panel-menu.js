$(document).ready(function(){
  $(window).scroll(function(){
    if(this.scrollX > 192) 
      $("#categorie").hide();
    else
      $("#categorie").show();
  });
  
  // POLICE MDT BUTTON
  $('.JShome').click(function(){
    showMenuMDTPolice("Home");
  });
  $('.JSrapport').click(function(){
    showMenuMDTPolice("Rapport");
  });

  // OTHER BUTTON MDT
  $('.JScreaterepportPD').click(function () {
    showMenuMDTPolice("createrapport");
  })

  $('.JSfindrepportPD').click(function () {
    showMenuMDTPolice("searchrapport")
  })
});

function showMenuMain(name) {
    $("#lspd").hide();
    $("#ems").hide();
    $("#admin").hide();
    $("#home").hide();
    if (name == "home") {
        $("#home").show();
    }
    if (name == "lspd") {
        $("#lspd").show();
    }
    if (name == "ems") {
        $("#ems").show();
    }
    if (name == "admin") {
        $("#admin").show();
    }
    
}

function showMenuMDTPolice(name) {
  $(".main").hide();
  $(".rapport").hide();
  $('.createreportpd').hide();
  $('.searchreportpd').hide();
  $('.rapportcontent').hide();
  $(".selectreportpd").hide();
  $(".criminal").hide();
  // $(".JSinformation").hide();
  // $(".JSmemo").hide();
  if (name == "Home") {
    $(".main").show();
  }
  if (name == "Rapport") {
    $(".rapport").show();
    $(".selectreportpd").show();
  }
  if (name == "RapportContent"){
    $(".rapport").show();
    $(".searchreportpd").show()
    $(".rapportcontent").show();
    $(".rapportlist").hide();
    $("#rapportfield").hide();
  }
  // submenu
  if(name == "createrapport"){
    $(".rapport").show();
    $('.createreportpd').show();
  }
  if(name == "searchrapport"){
    $(".rapport").show();
    $('.searchreportpd').show();
    $(".rapportlist").show();
    $("#rapportfield").show();
  }
 
  //
  if (name == "Criminel") {
    $(".criminal").show();
  }
  if (name == "Information") {
    $(".JSinformation").show();
  }
  if (name == "Information") {
    $(".JSmemo").show();
}
}



jQuery(function($) {
  //  Au focus
  $('.field-input').focus(function(){
    $(this).parent().addClass('is-focused has-label');
  });

  $('.field-input-search').focus(function(){
    $(this).parent().addClass('is-focused has-label');
  });


  // à la perte du focus
  $('.field-input').blur(function(){
    $parent = $(this).parent();
    if($(this).val() == ''){
      $parent.removeClass('has-label');
    }
    $parent.removeClass('is-focused');
  });

  $('.field-input-search').blur(function(){
    $parent = $(this).parent();
    if($(this).val() == ''){
      $parent.removeClass('has-label');
    }
    $parent.removeClass('is-focused');
  });

  // si un champs est rempli on rajoute directement la class has-label
  $('.field-input').each(function(){
    if($(this).val() != ''){
      $(this).parent().addClass('has-label');
    }
  });

  $('.field-input-search').each(function(){
    if($(this).val() != ''){
      $(this).parent().addClass('has-label');
    }
  });
})




$.fn.serializeObject = function(){
  var o = {};
  var a = this.serializeArray();
  $.each(a, function() {
      if (o[this.name] !== undefined) {
          if (!o[this.name].push) {
              o[this.name] = [o[this.name]];
          }
          o[this.name].push(this.value || '');
      } else {
          o[this.name] = this.value || '';
      }
  });
  return o;
};

$(function() {
  $('.JScreatereportpd').submit(function() {
      var civname = $('#JSFIELDCIVNAME').val();
      var reportname = $('#JSFIELDREPORTNAME').val();
      var reportcontent  = $('#JSFIELDREPORTCONTENT').val();
      $.post("../includes/include.mdt.form.php", {civname:civname,reportname:reportname,reportcontent:reportcontent},
      function (data) {
        $('#result').html(data);
      });
      showMenuMDTPolice("Rapport");
      return false;
  });
});

/*
$(function() {
  $("#searchreport").bind('submit',function() {
    var value = $('#search2').val();
     $.post('../includes/include.mdt.form.search.php',{value:value}, function(data){
       $("#rapportlist").html(data);
     });
     return false;
  });
});
*/

$(document).ready(function(){
  $("#search2").keyup(function(){
    $.ajax({
      url: '../includes/include.mdt.form.search.php',
      type: 'post',
      data: {search: $(this).val()},
      success:function(result) {
        $("#rapportlisting").html(result);
        
      }
    });
  });
});

function getReport(id) {
  showMenuMDTPolice("RapportContent");
  $.ajax({
    url: '../includes/include.mdt.form.search.php',
    type: 'post',
    data: {requestid: id},
    success:function(requestedid) {
       $(".rapportcontent").html(requestedid);
    }
  });
}