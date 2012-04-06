class HomeController < ApplicationController
  def index
    @member = Member.new
  end

  def special
  end
end
