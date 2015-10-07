define dokuwiki(
    $hostname,
    $user,
    $group,
) {

    require ::apache::mod::php

    apache::vhost { $hostname:
        docroot      => "/var/www/${hostname}",
        user         => $user,
        group        => $group,
        keepalive    => false, # Favor server being up over client speed
        manage_user  => false,
        manage_group => false,
    }
}
