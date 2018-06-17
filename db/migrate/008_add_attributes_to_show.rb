#should work like this Show.create(:name => "Community", :day => "Thursday", :season => "Winter")
class AddAttributesToShow < ActiveRecord::Migration[4.2]
    def change
        add_column :shows, :day, :string
        add_column :shows, :season, :string
    end
end