class standard::apache {
    class { '::apache':
        mpm_module    => 'prefork',
        default_vhost => false,
    }

    include ::apache::mod::php

    ensure_packages([
        'php5-gd',
    ])
}

class standard::packages {
    ensure_packages([
        'git',
        'vim',
    ])
}
