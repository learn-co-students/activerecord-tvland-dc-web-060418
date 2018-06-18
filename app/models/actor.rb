class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters


  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def find_characters
    Character.find_by(:actor_id => self.id).flatten
  end

  def list_roles
    self.characters.collect do |character|
      "#{character.name} - #{character.show.name}"
    end
  end

end
