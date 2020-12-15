class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    # Tagging.destroy_by(tag_id: params[:id])
    Tag.destroy(params[:id])
    flash.notice = 'Tag Destroyed!'
    redirect_to tags_path
  end
end
