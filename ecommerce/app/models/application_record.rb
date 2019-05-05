class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  # def local_request?
  #  false
  # end

  # def rescue_action_in_public(exception)
  #   case exception
  #   when ActiveRecord::RecordNotFound
  #     render :file => "#{RAILS_ROOT}/public/404.html", :status => 404
  #   else
  #    super
  #   end
  # end
end
