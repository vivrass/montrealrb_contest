class ApplicationController < ActionController::Base
  SUPPORTED_FORMAT = [:erb, :haml, :slim, :mustache]
  protect_from_forgery

  before_filter :change_format

  # Controller the available template handlers
  def change_format
    if current_subdomain && SUPPORTED_FORMAT.include?(current_subdomain.to_sym)
      @template_handler = current_subdomain.to_sym
    else
      @template_handler = :erb
    end
    self.lookup_context.handlers = self.lookup_context.handlers - SUPPORTED_FORMAT + [@template_handler]
  end
end
