node 'v3'
{
	file{ '/info.txt':
	    ensure  => 'present',
	    content => inline_template ("created by puppet at <%= Time.now %>\n"),
	}
	package{'ntp':
	    ensure => 'installed',
	}
}

node 'v4'
{
}
node 'v2'
{
}
