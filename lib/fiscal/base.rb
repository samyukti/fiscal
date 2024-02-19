# frozen_string_literal: true

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
    options[:date] = options[:date] || Date.new(year, month, day)
    Fiscal.new(options)
  end
end
