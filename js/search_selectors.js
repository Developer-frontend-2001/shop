$( "#product_search" ).autocomplete({
 source: 'search.php',
       // minLength: 1,
       focus: function( event, ui ) {
        $( "#product_search" ).val( ui.item.value );
        return false;
    },
    select: function( event, ui ) {
        $( "#product_search" ).val( ui.item.id );
        return true;
    }
});