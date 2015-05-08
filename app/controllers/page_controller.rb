class PageController < ApplicationController
  def home
  end

  def essentials
  	redirect_to root_path
  end
end
