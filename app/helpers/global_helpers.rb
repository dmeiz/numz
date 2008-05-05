module Merb
  module GlobalHelpers
    # helpers defined here available to all views.  
    def date_to_s(date)
      return "" unless date
      date.strftime("%m/%d/%Y")
    end
  end
end
