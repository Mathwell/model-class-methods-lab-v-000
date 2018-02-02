class Captain < ActiveRecord::Base
  has_many :boats

  def catamaran_operators
    includes(boats: :classifications).where(classifications: {name: "Catamaran"})
  end
end
