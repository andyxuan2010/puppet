node 'v3'
{
	file{ '/info.txt':
	    ensure  => 'present',
	    content => inline_template ("created by puppet at <%= Time.now %>\n"),
	}
	package{'ntp':
	    ensure => 'installed',
	}

	file { '/test.txt':
		ensure => 'present',
		content=> inline_template (" Created by puppet at <%= Time.now %> \n"),
	}
	service {'ntp':
		ensure => 'running',
		enable => true,
	}
		
}

node 'v4'
{
}
node 'v2'
{
}

node 'v5'
{
}
