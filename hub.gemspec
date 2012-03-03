# encoding: utf-8
$: << File.expand_path('../lib', __FILE__)
require 'hub/version'

Gem::Specification.new do |s|
  s.name              = "hub"
  s.version           = Hub::VERSION
  s.summary           = "Command-line wrapper for git and GitHub"
  s.homepage          = "https://github.com/defunkt/hub"
  s.email             = "chris@ozmm.org"
  s.authors           = [ "Chris Wanstrath", "Mislav Marohnić" ]

  s.files             = %w( README.md Rakefile LICENSE )
  s.files            += Dir.glob("lib/**/*")
  s.files            += Dir.glob("bin/**/*")
  s.files            += Dir.glob("man/**/*")
  s.files            += Dir.glob("test/**/*")

  s.executables       = %w( hub )
  s.description       = <<desc
  `hub` is a command line utility which adds GitHub knowledge to `git`.

  It can used on its own or as a `git` wrapper.

  Normal:

      $ hub clone rtomayko/tilt

      Expands to:
      $ git clone git://github.com/rtomayko/tilt.git

  Wrapping `git`:

      $ git clone rack/rack

      Expands to:
      $ git clone git://github.com/rack/rack.git
desc

  s.post_install_message = <<-message

------------------------------------------------------------

                  You there! Wait, I say!
                  =======================

       If you are a heavy user of `git` on the command
       line  you  may  want  to  install `hub` the old
       fashioned way.  Faster  startup  time,  you see.

       Check  out  the  installation  instructions  at
       https://github.com/defunkt/hub#readme  under the
       "Standalone" section.

       Cheers,
       defunkt

------------------------------------------------------------

message
end
