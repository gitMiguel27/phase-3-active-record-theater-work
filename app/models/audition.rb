class Audition < ActiveRecord::Base
  belongs_to :role

  def role
    role
  end

  def call_back
    self.hired = true
  end
end

# miguel = Audition.create(actor: 'Miguel', location: 'queens', phone: '111', hired: 'false', role_id: '1')
# gerald = Audition.create(actor: 'Gerald', location: 'manhattan', phone: '222', hired: 'true', role_id: '1')
