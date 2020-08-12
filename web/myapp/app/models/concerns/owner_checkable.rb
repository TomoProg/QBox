module OwnerCheckable
  # 自分の投稿かどうかを確認する
  # @param account_id [Integer] アカウントID
  # @return [Boolean] 自分の投稿かどうか
  def owner?(account_id)
    self.account_id == account_id
  end
end