$(document).ready(function() {
  $('.tabs .tab-links a').on('click', function(e)  {
    var currentAttrValue = $(this).attr('href');

    // Show/Hide Tabs
    jQuery('.tabs ' + currentAttrValue).siblings().slideUp(400);
    jQuery('.tabs ' + currentAttrValue).delay(400).slideDown(400);
    
    // Change/remove current tab to active
    $(this).parent('li').addClass('active').siblings().removeClass('active');
    
    e.preventDefault();
  });
});
