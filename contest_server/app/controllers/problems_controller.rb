class ProblemsController < ApplicationController
  def new
    @problem = Problem.new
  end

  def create
    problem_params = params.require(:problem).permit(:problem_url)
    @problem = Problem.new(problem_params)

    if @problem.save
      redirect_to @problem, notice: 'Problem was successfully created.'
    else
      render :new
    end
  end

  def show
    @problem = Problem.find(params[:id])
  end

  def index
    @problems = Problem.all
  end

  def edit
    @problem = Problem.find(params[:id])
  end

  def update
    problem_params = params.require(:problem).permit(:problem_url)
    @problem = Problem.find(params[:id])

    if @problem.update(problem_params)
      redirect_to @problem, notice: 'Problem was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @problem = Problem.find(params[:id])
    if @problem.destroy
      redirect_to problems_url, notice: 'Problem was successfully destroyed.'
    else
      render :new
    end
  end

end
