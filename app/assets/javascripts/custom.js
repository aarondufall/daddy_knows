$(document).ready(function(){
	 bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });

  jQuery(function() {
    return $('#question_tag_tokens').tokenInput('/tags.json', {
      // prePopulate: tagData || null
    });
  });

});