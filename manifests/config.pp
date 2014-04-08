class coa-yum::config {
	exec { 'importkey':
		command => '/bin/rpm --import http://dl.iuscommunity.org/pub/ius/IUS-COMMUNITY-GPG-KEY',
		path    => '/bin',
  }
}
