file { '/home/mscott':
	ensure => "directory",
	owner => 'mscott',
	group => 'mscott',
	mode => '2755',
}
file { '/home/dschrute':
	ensure => "directory",
	owner => 'dschrute',
	group => 'dschrute',
	mode => '2755',
}

file { '/home/jhalpert':
	ensure => "directory",
	owner => 'jhalpert',
	group => 'jhalpert',
	mode => '2755',
}

file { '/home/arutherford':
	ensure => "directory",
	owner => 'arutherford',
	group => 'arutherford',
	mode => '2755',
}

file { '/home/tflenderson':
	ensure => "directory",
	owner => 'tflenderson',
	group => 'tflenderson',
	mode => '2755',
}

file { '/home/cbratton':
	ensure => "directory",
	owner => 'cbratton',
	group => 'cbratton',
	mode => '2755',
}

file { '/home/dphilbin':
	ensure => "directory",
	owner => 'dphilbin',
	group => 'dphilbin',
	mode => '2755',
}

file { '/home/amartin':
	ensure => "directory",
	owner => 'amartin',
	group => 'amartin',
	mode => '2755',
}

file { '/home/kmalone':
	ensure => "directory",
	owner => 'kmalone',
	group => 'kmalone',
	mode => '2755',
}

file { '/home/omartinez':
	ensure => "directory",
	owner => 'omartinez',
	group => 'omartinez',
	mode => '2755',
}

file { '/home/mpalmer':
	ensure => "directory",
	owner => 'mpalmer',
	group => 'mpalmer',
	mode => '2755',
}

file { '/home/kkapoor':
	ensure => "directory",
	owner => 'kkapoor',
	group => 'kkapoor',
	mode => '2755',
}

file { '/home/pbeesly':
	ensure => "directory",
	owner => 'pbeesly',
	group => 'pbeesly',
	mode => '2755',
}

file { '/home/abernard':
	ensure => "directory",
	owner => 'abernard',
	group => 'abernard',
	mode => '2755',
}

file { '/home/plapin':
	ensure => "directory",
	owner => 'plapin',
	group => 'plapin',
	mode => '2755',
}

file { '/home/shudson':
	ensure => "directory",
	owner => 'shudson',
	group => 'shudson',
	mode => '2755',
}

file { '/home/managers':
	ensure => "directory",
	owner => 'mscott',
	group => 'managers',
	mode => '2770',
}

file { '/home/accounting':
	ensure => "directory",
	owner => 'mscott',
	group => 'accounting',
	mode => '2770',
}

file { '/home/sales':
	ensure => "directory",
	owner => 'mscott',
	group => 'sales',
	mode => '2770',
}


group { "managers":
	ensure => "present",
	gid => "600",
}

group { "sales":
	ensure => "present",
	gid => "700",
}

group { "accounting":
	ensure => "present",
	gid => "800",
}

group { "mscott":
	ensure => "present",
	gid => "501",
}

group { "dschrute":
	ensure => "present",
	gid => "502",
}

group { "jhalpert":
	ensure => "present",
	gid => "503",
}


group { "arutherford":
	ensure => "present",
	gid => "504",
}


group { "tflenderson":
	ensure => "present",
	gid => "505",
}


group { "cbratton":
	ensure => "present",
	gid => "506",
}


group { "dphilbin":
	ensure => "present",
	gid => "507",
}


group { "amartin":
	ensure => "present",
	gid => "508",
}


group { "kmalone":
	ensure => "present",
	gid => "509",
}

group { "omartinez":
	ensure => "present",
	gid => "510",
}


group { "mpalmer":
	ensure => "present",
	gid => "511",
}


group { "kkapoor":
	ensure => "present",
	gid => "512",
}


group { "pbeesly":
	ensure => "present",
	gid => "513",
}


group { "abernard":
	ensure => "present",
	gid => "514",
}


group { "plapin":
	ensure => "present",
	gid => "515",
}


group { "shudson":
	ensure => "present",
	gid => "516",
}


user { "mscott":
	uid => "501",
	ensure => present,
	comment => "Michael Scott",
	password => '$1$rl8gMEJP$Ebn/aG8WI5WRVcH27zilw1',
	gid => "mscott",
	groups => ["managers","accounting","sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/mscott",
	managehome => true,
}

user { "dschrute":
	uid => "502",
	ensure => present,
	comment => "Dwight Schrute",
		password => '$1$rl8gMEJP$Ebn/aG8WI5WRVcH27zilw1',
	gid => "dschrute",
	groups => ["managers","accounting","sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/dschrute",
	managehome => true,
}

user { "jhalpert":
	uid => "503",
	ensure => present,
	comment => "Jim Halpert",
		password => '$1$rl8gMEJP$Ebn/aG8WI5WRVcH27zilw1',
	gid => "jhalpert",
	groups => ["managers","accounting","sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/jhalpert",
	managehome => true,
}

user { "arutherford":
	uid => "504",
	ensure => present,
	comment => "Andrew Rutherford",
	password => '$1$rl8gMEJP$Ebn/aG8WI5WRVcH27zilw1',
	gid => "arutherford",
	groups => ["managers","accounting","sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/arutherford",
	managehome => true,
}

user { "tflenderson":
	uid => "505",
	ensure => present,
	comment => "Toby Flenderson",
		password => '$1$rl8gMEJP$Ebn/aG8WI5WRVcH27zilw1',
	gid => "tflenderson",
	#groups => ["HR"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/tflenderson",
	managehome => true,
}


user { "cbratton":
	uid => "506",
	ensure => present,
	comment => "Creed Bratton",
		password => '$1$rl8gMEJP$Ebn/aG8WI5WRVcH27zilw1',
	gid => "cbratton",
	#groups => ["QA REP"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/cbratton",
	managehome => true,
}


user { "dphilbin":
	uid => "507",
	ensure => present,
	comment => "Darryl Philbin",
		password => '$1$rl8gMEJP$Ebn/aG8WI5WRVcH27zilw1',
	gid => "dphilbin",
	#groups => ["WAREHOUSE FOREMAN"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/dphilbin",
	managehome => true,
}


user { "amartin":
	uid => "508",
	ensure => present,
	comment => "Angela Martin",
		password => '$1$rl8gMEJP$Ebn/aG8WI5WRVcH27zilw1',
	gid => "amartin",
	groups => ["accounting"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/amartin",
	managehome => true,
}


user { "kmalone":
	uid => "509",
	ensure => present,
	comment => "Kevin Malone",
		password => '$1$rl8gMEJP$Ebn/aG8WI5WRVcH27zilw1',
	gid => "kmalone",
	groups => ["accounting"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/kmalone",
	managehome => true,
}


user { "omartinez":
	uid => "510",
	ensure => present,
	comment => "Oscar Martinez",
		password => '$1$rl8gMEJP$Ebn/aG8WI5WRVcH27zilw1',
	gid => "omartinez",
	groups => ["accounting"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/omartinez",
	managehome => true,
}


user { "mpalmer":
	uid => "511",
	ensure => present,
	comment => "Meredith Palmer",
		password => '$1$rl8gMEJP$Ebn/aG8WI5WRVcH27zilw1',
	gid => "mpalmer",
	#groups => ["SUPPLIER RELATIONS"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/mpalmer",
	managehome => true,
}


user { "kkapoor":
	uid => "512",
	ensure => present,
	comment => "Kelly Kapoor",
		password => '$1$rl8gMEJP$Ebn/aG8WI5WRVcH27zilw1',
	gid => "kkapoor",
	#groups => ["CS REP"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/kkapoor",
	managehome => true,
}


user { "pbeesly":
	uid => "513",
	ensure => present,
	comment => "Pam Beesly",
		password => '$1$rl8gMEJP$Ebn/aG8WI5WRVcH27zilw1',
	gid => "pbeesly",
	#groups => ["RECEPTIONIST"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/pbeesly",
	managehome => true,
}


user { "abernard":
	uid => "514",
	ensure => present,
	comment => "Andy Bernard",
		password => '$1$rl8gMEJP$Ebn/aG8WI5WRVcH27zilw1',
	gid => "abernard",
	groups => ["sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/abernard",
	managehome => true,
}


user { "plapin":
	uid => "515",
	ensure => present,
	comment => "Phyllis Lapin",
		password => '$1$rl8gMEJP$Ebn/aG8WI5WRVcH27zilw1',
	gid => "plapin",
	groups => ["sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/plapin",
	managehome => true,
}


user { "shudson":
	uid => "516",
	ensure => present,
	comment => "Stanley Hudson",
		password => '$1$rl8gMEJP$Ebn/aG8WI5WRVcH27zilw1',
	gid => "shudson",
	groups => ["sales"],
	membership => minimum,
	shell => "/bin/bash",
	home => "/home/shudson",
	managehome => true,
}
