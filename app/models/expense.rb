class Expense < ActiveRecord::Base
  belongs_to :user
  validates :amount, presence: {message: "Please enter an amount."}
  validates :desc, presence: {message: "Please enter a description."}
  
  def amount
    amount = read_attribute(:amount)
    if amount.present?
      amount.to_f / 100
    end
  end
  
  def amount=(value)
    if value.present?
      b = (value.to_f * 100).to_i
    else
      b = value
    end
    write_attribute(:amount, b)
  end
end
