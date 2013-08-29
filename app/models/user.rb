class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :lockable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :roles

  ROLES = [:admin, :site_manager]

  def roles=(roles)
    self.roles_mask = (roles.map(&:to_sym) & ROLES).map {|r| 2**ROLES.index(r)}.sum
  end

  def roles
    ROLES.reject {|r| ((roles_mask || 0) & 2**ROLES.index(r)).zero?}
  end

  def role_symbols
    roles.map(&:to_sym)
  end

  def is?(role)
    roles.include? role
  end
end
