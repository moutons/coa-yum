# Install GPG Key
class coa-yum::config {
  exec { 'importkey':
    command => '/bin/rpm --import http://dl.iuscommunity.org/pub/ius/IUS-COMMUNITY-GPG-KEY',
    path    => '/bin',
  }

  exec { 'installepel':
    command => '/bin/rpm -Uvh http://mirrors.servercentral.net/fedora/epel/5/i386/epel-release-5-4.noarch.rpm',
    path    => '/bin',
  }
}
