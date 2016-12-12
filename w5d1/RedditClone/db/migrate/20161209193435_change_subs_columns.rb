class ChangeSubsColumns < ActiveRecord::Migration
  def change
    remove_column :subs, :url
    remove_column :subs, :content
    add_column :subs, :description, :text, null: false
  end
end
