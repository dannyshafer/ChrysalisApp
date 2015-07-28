extend ActiveSupport::Concern
included do
  helper_method :current_user
  helper_method :logged_in?
end

