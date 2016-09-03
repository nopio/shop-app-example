//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .


function lock_sizes(e) {
    var sizes = {};
    $("input:checkbox.row_"+e).each(function(i){
        sizes[$(this)[0].value] = $(this)[0].checked;
    });
    console.log(sizes)
    $.ajax({
        type: 'POST',
        url: '/products/lock',
        data: {
            id: e,
            sizes: sizes
        },
        success:function(data){
            console.log(data)
        }
    });
}