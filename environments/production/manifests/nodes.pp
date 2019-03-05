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
		content=> inline_template ("created for testing pupose")
	}
}

node 'v4'
{
}
node 'v2'
{
}
