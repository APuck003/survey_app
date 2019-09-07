class SurveyQuestionsController < ApplicationController
  def index
    @questions = Question.where('survey_id = ?', params[:survey_id])
  end
  
  # def show
  #   @survey = Survey.find(params[:survey_id])
  #   @question = Question.find_by_id(params[:question_id])
  #   render :index
  # end

  def new
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.new
  end
  
  def create
    @question = Question.new(survey_question_params)
    @question.survey_id = params[:survey_id]
    @question.save
    redirect_to survey_survey_questions_path
  end

  def edit
    # @survey = Survey.find(params[:survey_id])
    # @question = @survey.questions.new
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.find_by_id(params[:question_id])
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
