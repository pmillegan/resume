class PagesController < ApplicationController
  def home
  end

  def portfolio
  end

  def resume
  	@user = { :name => "Patrick Millegan" }
  end

  def onesheet
  end

end
