require 'date'
require 'active_support'
require 'active_support/core_ext'
require 'fiscal/version'
require 'fiscal/config'
require 'fiscal/period'
require 'fiscal/methods'
require 'fiscal/base'

Date.send :include, Fiscal
Time.send :include, Fiscal
