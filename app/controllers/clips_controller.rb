require 'json'

class ClipsController < ApplicationController
  before_action :authenticate_user!

  layout "admin"

  def index
    ##@clips = Clip.newest
    @clips = Clip.paginate(:page => params[:page], :per_page => 20).newest
  end

  def show
    @clip = Clip.find(params[:id])
    @actress = Actress.find_by_id(@clip.actress_id)

  end

  def new
    @clip = Clip.new
  end

  def create
    #Instantiate a new object using form parameters
    @clip = Clip.new(clip_params)
    #Save the object
    if @clip.save
      #Redirect to index page
      redirect_to(clips_path)
    else
      #Redisplay the form
      render('new')
    end
  end

  def edit
    @clip = Clip.find(params[:id])
  end

  def update
    #find the clip
    @clip = Clip.find(params[:id])
    #update the clip
    if @clip.update_attributes(clip_params)
      redirect_to(clips_path)
    else
      render("edit")
    end
  end

  def delete
    @clip = Clip.find(params[:id])
  end

  def destroy
    #find the object
    @clip = Clip.find(params[:id])
    #Destroy the object
    if @clip.destroy
      redirect_to(clips_path)
    else
      redirect_to(delete_clip_path(params[:id]))
    end
  end

private

  def clip_params
    params.require(:clip).permit(:actress_id, :clip_name, :clip_description, :movie, :release_date, :clip_tag1, :clip_tag2, :clip_tag3, :clip_tag4, :clip_tag5, :clip_src, :image_url, :mature, :link_broken, :download_link)
  end

end
