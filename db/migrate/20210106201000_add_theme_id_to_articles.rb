class AddThemeIdToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :theme_id, :integer
  end
end
