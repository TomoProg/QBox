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

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to question_url(@answer.question_id), notice: 'Answer was successfully destroyed.'
  end

  private
  # Only allow a list of trusted parameters through.
  def answer_params
    params.require(:answer).permit(:question_id, :contents).merge(account_id: current_account.id)
  end
end
