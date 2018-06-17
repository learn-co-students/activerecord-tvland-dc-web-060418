class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    i=0
    roles = self.characters.map {|character| character.name}
    titles = self.shows.map{|shows| shows.name}
    roles_n_shows = []
    roles.each do |role|
      roles_n_shows<< "#{role} - #{titles[i]}"
      i += 1
    end
    roles_n_shows
  end

end
