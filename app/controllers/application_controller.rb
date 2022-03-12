# frozen_string_literal: true

class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :handle_exception

  def handle_exception(error)
    render json: { errors: error.message }, status: 404
  end
end
