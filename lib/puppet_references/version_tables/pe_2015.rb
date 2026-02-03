require 'puppet_references'
module PuppetReferences
  module VersionTables
    class Pe2015 < PuppetReferences::VersionTables::PeTables
      def initialize(pe_data, agent_data = {})
        super
        @file = '_versions_2015.md'
        @versions = @pe_data.keys.select do |v|
          v =~ /^2015/
        end.sort.reverse
      end
    end
  end
end
