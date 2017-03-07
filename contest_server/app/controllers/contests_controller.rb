class ContestsController < ApplicationController
  def new
    @contest = Contest.new
  end

  def create
    contest_params = params.require(:contest).permit(:contest_name, :start_time, :ending_time)
    @contest = Contest.new(contest_params)

    if @contest.save
      redirect_to @contest, notice: 'Contest was successfully created.'
    else
      render :new
    end
  end

  def show
    @contest = Contest.find(params[:id])
  end

  def index
    @contests = Contest.all
  end

  def edit
    @contest = Contest.find(params[:id])
  end

  def update
    contest_params = params.require(:contest).permit(:contest_name, :start_time, :ending_time)
    @contest = Contest.find(params[:id])

    if @contest.update(contest_params)
      redirect_to @contest, notice: 'Contest was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @contest = Contest.find(params[:id])
    if @contest.destroy
      redirect_to contests_url, notice: 'Contest was successfully destroyed.'
    else
      render :new
    end
  end

end
