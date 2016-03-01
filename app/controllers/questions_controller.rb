class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new_by_type(question_params)
    if @question.save
      flash[:success] = "Question created"
      redirect_to questions_path
    else
      flash[:danger] = "There was a problem"
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    question_params.delete(:type)
    if @question.update(question_params)
      flash[:success] = "Question updated"
      redirect_to questions_path
    else
      flash[:danger] = "There was a problem"
      render :edit
    end
  end

  def destroy
    Question.find(params[:id]).destroy
    redirect_to action: 'index'
  end

  private

  def question_params
    params.require(:question).permit(:prompt, :type, :answer, :option_a, :option_b, :option_c, :option_d)
  end
end
