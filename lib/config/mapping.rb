collection :categories do
  entity     Category
  repository CategoryRepository

  attribute :id,   Integer
  attribute :name, String
end

collection :expenses do 
  entity Expense 
  repository ExpenseRepository

  attribute :id, Integer
  attribute :amount, Integer 
  attribute :category_id, Integer
end
