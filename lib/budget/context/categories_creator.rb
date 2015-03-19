module Context 
  class CategoriesCreator 
    def self.create(category_name)
      new.create(category_name)
    end

    def initialize(categories = CategoryRepository)
      @categories = categories
    end

    def create(category_name)
      categories.create(Category.new(name: category_name))
    end

    private 

    attr_reader :categories
  end
end
