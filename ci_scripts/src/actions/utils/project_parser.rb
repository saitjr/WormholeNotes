require 'amazing_print'
require 'xcodeproj'

module Utils
  class ProjectParser

    attr_accessor :xcodeporj_path

    attr_reader :xcodeporj_obj

    def initialize(path)
      self.xcodeporj_path = path
      @xcodeporj_obj = Xcodeproj::Project.open(path)
    end
    
    def product_name
      return release_build_settings['INFOPLIST_KEY_CFBundleDisplayName']
    end

    def version
      return release_build_settings['MARKETING_VERSION']
    end

    def bundle_id
      return release_build_settings['PRODUCT_BUNDLE_IDENTIFIER']
    end

    def info_plist
      return release_build_settings['INFOPLIST_FILE']
    end

    def release_build_settings
      target_obj = @xcodeporj_obj.objects.find { |i| i.is_a?(Xcodeproj::Project::Object::PBXNativeTarget) && i.product_type == 'com.apple.product-type.application' }
      configuration_list = target_obj.build_configuration_list.build_configurations
      release_config = configuration_list.find { |c| !c.debug? }

      # ap release_config

      return release_config.build_settings
    end

  end
end

# path = '/Users/saitjr/Documents/WormholeNotes/WormholeNotes.xcodeproj'
# obj = Utils::ProjectParser.new(path)
# ap obj.version
