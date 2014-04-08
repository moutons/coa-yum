# Install GPG Key
class coa-yum::config {
  exec { 'importkey':
    command => '/bin/rpm --import http://dl.iuscommunity.org/pub/ius/IUS-COMMUNITY-GPG-KEY',
    path    => '/bin',
    before  => Class[ 'coa-yum::install'],
  }

  exec { 'installepel':
    command => '/bin/rpm -Uvh http://mirror.pnl.gov/epel/6/i386/epel-release-6-8.noarch.rpm',
    path    => '/bin',
    before  => Class[ 'coa-yum::install'],
  }
}
