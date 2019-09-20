class ActressesController < ApplicationController

  layout "admin"

  def index
    ##@actresses = Actress.newest
    @search = params["search"]
    if @search.present?
      @first_name = @search["first_name"]
      ##@actresses = Actress.where(first_name: @first_name)
      ##@actresses = Actress.paginate(:page => params[:page], :per_page => 20).order(:first_name).where(first_name: @first_name)
      @actresses = Actress.paginate(:page => params[:page], :per_page => 20).order(:first_name).where("first_name LIKE ?", "%#{@first_name}%")
    else
    @actresses = Actress.paginate(:page => params[:page], :per_page => 20).order(:first_name)
    end
  end

  def show
    @actress = Actress.find(params[:id])
    @clips = Clip.where(:actress_id => "#{@actress.id}")

  end

  def new
    @actress = Actress.new
  end

  def create
    #Instantiate a new object using form parameters
    @actress = Actress.new(actress_params)
    #Save the object
    if @actress.save
      #Redirect to index page
      redirect_to(actresses_path)
    else
      #Redisplay the form
      render('new')

    end
  end

  def edit
    @actress = Actress.find(params[:id])
  end

  def update
    #Find an object using params
    @actress = Actress.find(params[:id])
    #Update the object
    if @actress.update_attributes(actress_params)
      #Redirect to index page
      redirect_to(actresses_path(@actress))
    else
      #Redisplay the form
      render('edit')

    end
  end

  def delete
    @actress = Actress.find(params[:id])
  end

  def destroy
    #find the object
    @actress = Actress.find(params[:id])
    #destroy the object
    @actress.destroy
    #Redirect to index page
    redirect_to(actresses_path)
  end
  
  def result
  end

  private

  def actress_params
    params.require(:actress).permit(:first_name, :last_name, :image_url, :image_path, :title, :description)
  end


end
