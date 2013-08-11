class Tenancy < ActiveRecord::Base
  has_many :memberships
  has_many :users, through: :memberships

  cattr_accessor :current_id
end
