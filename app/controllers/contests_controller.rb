class ContestsController < ApplicationController

  def index
    @contest = Contest.all.order("created_at DESC")
  end

  def show

  end

  def new
    @contest=contest.build
  end

  def create
    @contest=contest.build(contests_params)

    if @contest.save
      redirect_to @contest
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @contest.update(contest_params)
      redirect_to @contest
    else
      render 'edit'
    end
  end

  def destroy
    @contest.destroy
    redirect_to contests_path
  end

  private

  def find_contest
    @contest=Contest.find(params[:id])
  end

  def contest_params
    params.require(:contest).permit()
  end

end
