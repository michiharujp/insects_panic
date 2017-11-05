require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  fixtures :all

  def is_logged_in?
    session[:user_id].present?
  end

  def log_in_as(user)
    session[:user_id] = user.id
  end

  class ActionDispatch::IntegrationTest

    def log_in_as(user, password: 'password')
      post login_path, params: { session: { name: user.name,
                                            password: password } }
    end
  end

end
