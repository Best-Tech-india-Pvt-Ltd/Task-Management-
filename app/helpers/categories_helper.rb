module CategoriesHelper
    def category_options
        [["None",nil]]+Category.all.pluck(:title,:id)
    end
end
