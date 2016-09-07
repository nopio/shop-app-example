//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .


function lock_sizes(product_id) {
  var sizes = {};
  $("input:checkbox.row_" + product_id).each(function (i) {
    sizes[$(this)[0].value] = $(this)[0].checked;
  });

  $.ajax({
    type: 'POST',
    url: '/products/lock',
    data: {
      id: product_id,
      sizes: sizes
    },
    success: function (data) {
    }
  });
};