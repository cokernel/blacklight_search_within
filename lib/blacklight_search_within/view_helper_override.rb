  # Meant to be applied on top of Blacklight helpers, to over-ride
  # Will add rendering of limit itself in sidebar, and of constraings
  # display. 
  module BlacklightSearchWithin::ViewHelperOverride
    def render_search_bar
      unless action_name == "show"
        render :partial => "catalog/search_form"
      end
    end

    def render_document_sidebar_partial(document = @document)
      render :partial => "search_within_sidebar"
    end

#    def search_action_url options = {}
#      if action_name == "show"
#        url_for(options.merge(:action => "hits"))
#      else
#        url_for(options.merge(:action => "index"))
#      end
#    end
  end
