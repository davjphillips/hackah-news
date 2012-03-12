class LinksController < ApplicationController
  def index
  end

  def new
    
  end

  def create
    @link = Link.new(params[:link])
    
    if @link.save
      redirect_to links_path, :notice => "Link added"
    else
      render "new"
    end
  end
end