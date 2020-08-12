class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)
    @question = Question.find(answer_params[:question_id])
    if @answer.save
      redirect_to @question, notice: 'Answer was successfully created.'
    else
      render 'questions/show'
    end
  end

  private
  # Only allow a list of trusted parameters through.
  def answer_params
    params.require(:answer).permit(:question_id, :contents).merge(account_id: current_account.id)
  end
end
