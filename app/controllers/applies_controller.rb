class AppliesController < ApplicationController
  before_action :set_apply, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  def employees
      @applies = Apply.all.where(employer: current_user).order("created_at DESC")
  end

  def interested_projects
      @applies = Apply.all.where(interested: current_user).order("created_at DESC")
  end

  # GET /applies/1
  # GET /applies/1.json
  def show
  end

  # GET /applies/new
  def new
    @apply = Apply.new
    @project = Project.find(params[:project_id])
  end

  # POST /applies
  # POST /applies.json
  def create
    @apply = Apply.new(apply_params)
    @project = Project.find(params[:project_id])
    @employer = @project.user

    @apply.project_id = @project.id
    @apply.interested_id = current_user.id
    @apply.employer_id = @employer.id
    respond_to do |format|
      if @apply.save
        format.html { redirect_to root_url, notice: 'Apply was successfully created.' }
        format.json { render :show, status: :created, location: @apply }
      else
        format.html { render :new }
        format.json { render json: @apply.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apply
      @apply = Apply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apply_params
      params.require(:apply).permit(:free_time, :skills)
    end
end
