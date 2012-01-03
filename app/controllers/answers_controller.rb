class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(params[:answer])
    @answer.user_id = current_user
    @answer.quiz_id = @question.id
    @answer.save
    redirect_to [@question, @answer]
  end

  def show
    @answer = Answer.find(params[:id])
    @question = Question.find(params[:question_id])
  end
end