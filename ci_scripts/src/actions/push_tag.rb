require 'amazing_print'
require_relative 'utils/project_parser'

module Action
  class PushTag

    def tag_name(prefix)
      path = '/Users/saitjr/Documents/WormholeNotes/WormholeNotes.xcodeproj'
      parser = Utils::ProjectParser.new(path)
      ap "#{prefix}-#{parser.version}-BUILD-1"
    end

  end
end

Action::PushTag.new.tag_name('TEST')
