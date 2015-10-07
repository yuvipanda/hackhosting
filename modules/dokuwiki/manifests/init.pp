define dokuwiki(
    $hostname = $title,
) {

    $docroot = "/var/www/${hostname}"

    file { $docroot:
        ensure => directory,
        owner  => 'www-data',
        group  => 'www-data',
        mode   => '0775',
    }

    vcsrepo { $docroot:
        provider => git,
        ensure   => present,
        source   => 'https://github.com/splitbrain/dokuwiki.git',
        revision => 'stable',
        user     => 'www-data',
        group    => 'www-data',
        require  => File[$docroot],
    }

    file { "${docroot}/.htaccess":
        ensure  => present,
        owner   => 'www-data',
        group   => 'www-data',
        mode    => '0444',
        content => template('dokuwiki/htaccess.erb'),
        require => Vcsrepo[$docroot],
    }

    # Setup the apache site only once the .htaccess is in place
    apache::vhost { $hostname:
        docroot     => $docroot,
        port        => '80',
        directories => [
            { path  => $docroot, allow_override => all }
        ],
        require => File["${docroot}/.htaccess"],
    }
}
