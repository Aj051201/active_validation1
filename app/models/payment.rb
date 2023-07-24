class Payment < ApplicationRecord
	before_save :deduct_balance_from_user
	after_rollback :clean_up_opr

	def deduct_balance_from_user
		user = User.find(user_id)
    if user.balance >= amount
      user.update(balance: user.balance - amount)
      self.status = "success"
    else
      self.status = "failed"
      raise ActiveRecord::Rollback
    end
end
