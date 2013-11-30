class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def render_ember
    render "layouts/application", layout: false
  end

  # Send an object along with the initial HTML response so that Ember will not need
  # to make additional requests to fetch data.
  def preload!(key, data)
    @preload ||= []
    data = [data] unless data.is_a? Array
    @preload.push({object_type: key, object: ActiveModel::ArraySerializer.new(data, scope: current_user, root: key.pluralize)})
  end
end
