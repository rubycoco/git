
### note: use a different module for version (meta) info
###        that is, GittiCore and NOT Gitti
###       why? do NOT "pollute" Gitti with MAJOR, MINOR, PATH, and
###                                        self.banner, self.root, etc.


module GittiCore    ## todo/check: rename GittiBase or GittiMeta or such - why? why not?
  MAJOR = 0    ## todo: namespace inside version or something - why? why not??
  MINOR = 6
  PATCH = 1
  VERSION = [MAJOR,MINOR,PATCH].join('.')

  def self.version
    VERSION
  end

  def self.banner
    "gitti/#{VERSION} on Ruby #{RUBY_VERSION} (#{RUBY_RELEASE_DATE}) [#{RUBY_PLATFORM}]"
  end

  def self.root
    File.expand_path( File.dirname(File.dirname(File.dirname(__FILE__))) )
  end
end # module GittiCore

