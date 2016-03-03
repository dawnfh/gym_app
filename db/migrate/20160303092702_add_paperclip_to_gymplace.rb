class AddPaperclipToGymplace < ActiveRecord::Migration
  def change
  end

  add_attachment :gymplaces, :image
end
