class AnswerRepliesController < ApplicationController
  def create
    @answer_reply = AnswerReply.new(answer_reply_params)
    @question = Question.find(@answer_reply.answer.question_id)
    if @answer_reply.save
      redirect_to @question, notice: 'AnswerReply was successfully created.'
    else
      render 'questions/show'
    end
  end

  def destroy
    @answer_reply = AnswerReply.find(params[:id])
    @answer_reply.destroy
    redirect_to question_url(@answer_reply.answer.question_id), notice: 'AnswerReply was successfully destroyed.'
  end

  private
  # Only allow a list of trusted parameters through.
  def answer_reply_params
    params.require(:answer_reply).permit(:answer_id, :contents).merge(account_id: current_account.id)
  end
end
