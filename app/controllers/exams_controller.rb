class ExamsController < ApplicationController
  def index
    @exams = Exam.all
  end

  def new
    @exam = Exam.new
  end

  def create
    @exam = Exam.new(exam_params)
    @exam.question_ids = params[:exam][:question_ids]
    if @exam.save
      flash[:success] = "Exam create successfully"
      redirect_to exams_path
    else
      flash[:danger] = "Please fix the errors below"
      render :new
    end
  end

  def edit
    @exam = Exam.find(params[:id])
  end

  def update
    @exam = Exam.find(params[:id])
    @exam.question_ids = params[:exam][:question_ids]
    if @exam.update(exam_params)
      flash[:success] = "Exam updated"
      redirect_to exams_path
    else
      flash[:danger] = "Please fix the errors below"
      render :edit
    end
  end

  def destroy
    Exam.find(params[:id]).destroy
    redirect_to action: 'index'
  end

  def show
    @exam = Exam.find(params[:id])
  end

  def key
    @exam = Exam.find(params[:id])
  end

  private

  def exam_params
    params.require(:exam).permit(:title)
  end
end
