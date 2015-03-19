require_relative "../../spec_helper"

module ViewExpensesByCategories
  step 'I created the category :category_name' do |category_name|
    Context::CategoriesCreator.create(category_name)
  end

  step 'I spent :expense in :category_name' do |expense, category_name|
    Context::RegisterExpense.register(expense, category_name)
  end

  step 'I view the spent by category report' do
    @presenter = Context::ViewSpentByCategory.exec 
  end

  step 'the spent by category report should match:' do |table|
    require 'pry'; binding.pry  
    expect(table.raw).to eql @presenter.to_a
  end
end

RSpec.configure { |c| c.include ViewExpensesByCategories }
