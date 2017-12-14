class CoursesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  # GET /users
  # GET /users.json

  def index
  	@courses = Course.all
    @topic = Topic.all
    @recent_courses = Course.last(3)
  end

  # GET /users/1
  # GET /users/1.json

  def show
    @course = Course.find(params[:id])
    @chapters = @course.chapters
  end

  # GET /users/new

  def new
  	@course = Course.new
  end
  # GET /users/1/edit

  def edit
  end

  # POST /users
  # POST /users.json

  def create
  	@course = Course.new(course_params)

	  	respond_to do |format|
	  		if @course.save
	  			format.html { redirect_to @course, notice: "Course created" }
	  			format.json { render :show, status: :created, location: @course }
	  		else
	  			format.html {render new }
	  			format.json { render json: @course.errors, status: :unprocessable_entity }
	  		end
	  	end
  end
  

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json

  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

# DELETE /users/1
# DELETE /users/1.json

  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully deleted.' }
      format.json { head :no_content }
    end
  end

 private

 		def set_course
      @course = Course.find(params[:id])
    end

     # Use callbacks to share common setup or constraints between actions.

     def course_params
     	params.require(:course).permit(:title, :summary, :description, :thumbnail, :feature_image, :support_video, :tag_list, :path_id, :topic_id)
     end
end

