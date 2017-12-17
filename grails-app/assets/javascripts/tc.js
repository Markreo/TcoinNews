$(document).ready(function () {
   $(document).on("keypress", "textarea[rel='add-comment']", function (event) {
       if(event.which === 13 && !event.shiftKey) {
           var _self = $(this);
           var type = _self.data("type");
           var entryId = _self.data("entry-id");
           var content = _self.val();
           $.post("/comment/add", {type: type, entryId: entryId.trim(), content: content}, function (html) {
               console.log($(this))
               _self.closest('.social-comment').before(html);
               _self.val('');
           });
           return false
       }
   });

    $(document).on("keyup", "textarea[rel='add-comment']", function(e) {
        if (e.keyCode === 27) {
            // <DO YOUR WORK HERE>
            $(this).val('')
        }
    });
});
