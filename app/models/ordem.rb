class Ordem < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :empregado
end
