class Role < ActiveRecord::Base
  has_many :auditions

  def auditions
    auditions.all
  end

  def actors
    actors = auditions.all.map {|audition| audition.actor}
  end

  def locations
    locations = auditions.all.map {|audition| audition.actor}
  end

  def lead
    if auditions.find_by(hired: true) == nil
        'no actor has been hired for this role'
    end
    auditions.find_by(hired: true)
  end

  def understudy
    if auditions.find_by(hired: true) == nil
        'no actor has been hired for this role'
    end
    auditions.find_by(hired: true)
  end
end

# role1 = Role.create(character_name: 'mickey')
# role2 = Role.create(character_name: 'goofy')