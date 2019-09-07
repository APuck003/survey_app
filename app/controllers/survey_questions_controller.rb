class SurveyQuestionsController < ApplicationController
  def index
    @questions = Question.where('survey_id = ?', params[:survey_id])
  end
  
  def new
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.new
  end
  
  # def show
  #   @survey = Survey.find(params[:survey_id])
  #   @question = Question.find_by_id(params[:question_id])
  #   render :index
  # end
  
  def create
    @question.survey_id = params[:survey_id]
    @question.save
  end
  
  def update
    # @question.survey_id = params[:survey_id]
    # @question.update
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.find_by_id(params[:question_id])
    if @question.update(survey_question_params)
      redirect_to @survey
    else
      render 'edit'
    end
  
  end
  
  def edit
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.find_by_id(params[:question_id])
  end
  
  def destroy
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.find(params[:question_id])
    @question.destroy
    redirect_to survey_path(@survey)
  end
  
  private
  
  def survey_question_params
    params.require(:question).permit(:question_id, :survey_id, :question)
  end
end
