class AddAttachmentHeroToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.has_attached_file :hero
    end
  end

  def self.down
    drop_attached_file :products, :hero
  end
end
