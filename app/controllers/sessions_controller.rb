class SessionsController < Devise::SessionsController
  protect_from_forgery with: :null_session

  protected

  def respond_with(resource, opts = {})
    if resource.errors.any?
      super
    else
      render json: {
        data: {
          token: generate_token({ id: resource.id })
        }
      }
    end
  end
end
