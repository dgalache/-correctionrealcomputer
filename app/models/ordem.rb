class Ordem < ActiveRecord::Base
  belongs_to :cliente
  has_many :empregado
end
