class BestAnswersController < ApplicationController
  def create
    @best_answer = BestAnswer.new(best_answer_params)
    @question = Question.find(best_answer_params[:question_id])
    if @best_answer.save
      redirect_to @question, notice: 'Best answer was successfully created.'
    else
      render 'questions/show'
    end
  end

  def destroy
    @best_answer = BestAnswer.find(params[:id])
    @best_answer.destroy
    redirect_to question_url(@best_answer.question_id), notice: 'Best answer was successfully destroyed.'
  end

  private
  # Only allow a list of trusted parameters through.
  def best_answer_params
    params.require(:best_answer).permit(:question_id, :answer_id)
  end
end
