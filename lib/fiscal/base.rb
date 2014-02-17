module Fiscal

  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def fiscal(options = {})
      Fiscal.new(options)
    end
  end

  def fiscal(options = {})
    # default date from the date instance
    options[:date] = options[:date] || Date.new(self.year, self.month, self.day)
    Fiscal.new(options)
  end

end
