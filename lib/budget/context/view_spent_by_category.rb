module Context
  class ViewSpentByCategory
    def self.exec
      new.exec
    end

    def initialize(categories = CategoryRepository)
      @categories = CategoryRepository
    end

    def exec
      Presenter.new(categories)
    end

    class Presenter
      def initialize(categories)
        @categories = categories
        @rows = []
      end

      def to_h
        categories.all.inject(headers) do |rows, category|
          rows[category.name] = category.expense_subtotal
          rows
        end
      end

      def total
        categories.all.inject(0) do |total, category| 
          total += category.expense_subtotal 
        end
      end

      private

      def headers
        {"CategoryName" => "SubTotal"}
      end

      attr_reader :categories
    end

    private

    attr_reader :categories
  end
end
