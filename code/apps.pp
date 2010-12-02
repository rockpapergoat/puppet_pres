# Set Package resource defaults for OS X clients

class apps {
	#$sourcedir="http://nate.adullmoment.com/puppet/pkg"
	$bean="http://www.bean-osx.com/releases/Bean-Install.dmg"
	
	Package{ ensure => installed, provider => pkgdmg,}

	package {"Bean-Install.dmg":
		source => $bean,
	}
}
