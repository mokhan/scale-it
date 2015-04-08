class LinesController < ApplicationController
  def show
    render text: Image.find(params[:id]).to_xml
  end
end
