class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "hey hii... how r u."
  end
end
