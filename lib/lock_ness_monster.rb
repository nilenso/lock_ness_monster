require "lock_ness_monster/version"

module LockNessMonster
  def self.lock
    unless File.exists?("Gemfile")
      puts "Gemfile not present. Nothing to lock."
      return
    end

    gems = IO.readlines(File.join(Dir.pwd, "Gemfile"))

    puts "* Looking for gem versions"

    installed_gems = %x{bundle exec gem list}.split("\n").each_with_object({}) do |gem_name_with_version, hash|
      match = gem_name_with_version.match(/(\S+)\s\((\S+).*\)/)
      if match
        gem_name, version = match[1], match[2]
      else
        puts "Unable to lock #{gem_name_with_version}."
        next
      end
      hash[gem_name] = version
    end

    gems.map! do |line|
      match = line.match /^\s*gem\s['"](\S+)['"]\s*$/
      if match
        gem_name = match[1].strip
        version_number = installed_gems[gem_name]
        line.rstrip + ", '~> #{version_number}'\n"
      else
        line
      end
    end

    puts "* Updating your Gemfile"

    File.open(File.join(Dir.pwd, "Gemfile"), 'w') do |f|
      f.puts gems
    end

    puts "* RAAAWR!! Your Gemfile is locked (and loaded)."
  end
end
