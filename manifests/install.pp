# CoA Yum Installtion File
class coa-yum::install {
  file {'/etc/yum.repos.d/ius.repo':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/coa-yum/etc_yum.repos.d_ius.repo',
  }

  file {'/etc/yum.repos.d/ius-archive.repo':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/coa-yum/etc_yum.repos.d_ius-archive.repo',
  }

  file {'/etc/yum.repos.d/ius-dev.repo':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/coa-yum/etc_yum.repos.d_ius-dev.repo',
  }

  file {'/etc/yum.repos.d/ius-testing.repo':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/coa-yum/etc_yum.repos.d_ius-testing.repo',
  }
}
