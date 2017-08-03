require 'bools/version'
require 'bools/bool'

module Bools
  def self.included(base)
    base.extend(Bools)
  end

  def bool(name, value)
    Bools::Bool.new(self, name, value).define
  end
end
