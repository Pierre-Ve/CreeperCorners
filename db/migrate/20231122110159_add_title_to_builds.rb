class AddTitleToBuilds < ActiveRecord::Migration[7.1]
  def change
    add_column :builds, :title, :string
  end
end
