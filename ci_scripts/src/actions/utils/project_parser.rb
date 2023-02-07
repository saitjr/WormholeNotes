require 'amazing_print'
require 'xcodeproj'

module Utils
  class ProjectParser

    attr_accessor :xcodeporj_path

    attr_reader :xcodeporj_obj

    def initialize(path)
      self.xcodeporj_path = path
      @xcodeporj_obj = Xcodeproj::Project.open(path)
      # ap @xcodeporj_obj
    end
    
    def product_name
      return @xcodeporj_obj['rootObject']
    end

    def app_build_settings
      # return @xcodeporj_obj.objects.select { |o| o['isa'] == "com.apple.product-type.application" }
      # ap @xcodeporj_obj.build_configuration_list.build_configurations#('PRODUCT_BUNDLE_IDENTIFIER')
      # ap @xcodeporj_obj.build_configuration_list.build_settings('Release')

      ap @xcodeporj_obj.products
      return
    end

  end
end

path = '/Users/saitjr/Documents/WormholeNotes/WormholeNotes.xcodeproj'
obj = Utils::ProjectParser.new(path)
obj.app_build_settings
