class ApplicationController < ActionController::Base
  before_action :set_last_visit

  private

  def set_last_visit
    last_visited_time = session[:last_visited] || Time.current.to_s
    @last_visit = Time.current - Time.parse(last_visited_time)
    session[:last_visited] = Time.current.to_s
  end
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  include ActionView::Helpers::DateHelper

end
