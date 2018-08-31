# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :passive_authenticate_user
  protect_from_forgery with: :null_session

  protected

  def passive_authenticate_user
    sign_in(user_from_token) if user_from_token.present?
  end

  def user_from_token
    token = token_param

    return unless token.present?

    decoded = decode_token(token)

    return unless decoded.present?

    User.find(decoded['user_id'])
  end

  def decode_token(token)
    JWT.decode(token, Rails.application.credentials[:secret_key_base], true, 'HS256') rescue nil
  end
  helper_method :decode_token

  def generate_token(payload)
    JWT.encode(payload, Rails.application.credentials[:secret_key_base], 'HS256')
  end
  helper_method :generate_token

  def token_param
    params[:token] || request.headers['X-Api-Token']
  end
end
