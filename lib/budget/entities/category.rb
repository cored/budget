class Category
  include Lotus::Entity

  attributes :name

  def expense_subtotal 
    expenses.inject(0) { |subtotal, expense| subtotal += expense.amount }
  end

  def expenses
    ExpenseRepository.find_by_category_id(id)
  end
end
