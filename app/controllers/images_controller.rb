class ImagesController < ApplicationController
  def show
    begin
      image = Image.find(params[:id])
      send_data image.data, :type => image.mime_type, :disposition => 'inline'
    rescue ActiveRecord::RecordNotFound
      render "public/404", status: :not_found
    end
  end
end
