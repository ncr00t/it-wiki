class AddListThemesToThemes < ActiveRecord::Migration[6.1]
  def up
    Theme.create!(:name => 'Programming Languages')
    Theme.create!(:name => 'Databases')
    Theme.create!(:name => 'Frameworks')
    Theme.create!(:name => 'Software')
    Theme.create!(:name => 'Hardware')
  end

  def down
    themes = Theme.all
    themes.map(&:delete)
  end
end
