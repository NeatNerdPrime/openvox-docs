require 'puppet_references'
module PuppetReferences
  module VersionTables
    class Pe2017 < PuppetReferences::VersionTables::PeTables
      def initialize(pe_data, agent_data = {})
        super
        @file = '_versions_2017.md'
        @versions = @pe_data.keys.select do |v|
          v =~ /^2017/
        end.sort.reverse
      end
    end
  end
end
