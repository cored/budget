module Context 
  class RegisterExpense 
    def self.register(amount, category_name)
      new.register(amount, category_name)
    end

    def initialize(expenses = ExpenseRepository, categories = CategoryRepository)
      @expenses = expenses
      @categories = categories
    end

    def register(amount, category_name)
      expenses.create(
        Expense.new(amount: amount, 
                    category_id: categories.find_by_name(category_name).id)  
      )
    end

    private 

    attr_reader :expenses, :categories
  end
end
