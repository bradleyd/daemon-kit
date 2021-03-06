module DaemonKit
  module Generators
    class SqsGenerator < Base

      def update_gemfile
        append_file 'Gemfile', "gem 'aws-sdk'\n"
      end

      def create_config_files
        directory 'config'
      end

      def create_daemon
        directory 'libexec'
      end

      protected

      def self.source_root
        File.expand_path( File.join( File.dirname(__FILE__), 'templates') )
      end
    end
  end
end
