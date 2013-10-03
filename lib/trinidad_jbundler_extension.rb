require "trinidad_jbundler_extension/version"
require 'trinidad/lifecycle/web_app/default'
require 'jbundler'

module Trinidad
  module Lifecycle
    module WebApp
      class Default
        def add_application_jars(class_loader)
          if lib_dir = web_app.java_lib_dir
            Dir[ File.join(lib_dir, "**/*.jar") ].each do |jar|
              logger.debug "[#{web_app.context_path}] adding jar: #{jar}"
              class_loader.addURL java.io.File.new(jar).to_url
            end
          end
          JBUNDLER_CLASSPATH.each do |jar|
            logger.debug "[#{web_app.context_path}] adding jar: #{jar}"
            class_loader.addURL java.io.File.new(jar).to_url
          end
        end
      end
    end
  end
end
