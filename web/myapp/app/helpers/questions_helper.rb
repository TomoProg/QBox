module QuestionsHelper
  # 指定されたレコードが自分の投稿かどうかを確認する
  # @param model [Object] モデルクラス
  # @param account_id [Integer] アカウントID
  # @return [Boolean] 自分の投稿かどうか
  def is_mine(model, account_id=current_account.id)
    model.account_id == account_id
  end
end
