class HomeController < ApplicationController
  def index
    @member = Member.new
  end
end
