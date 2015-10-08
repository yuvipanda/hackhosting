define dokuwiki::plugin(
    $plugin_name = $title,
    $hostname,
) {
    $docroot = "/var/www/${hostname}"
    file { "${docroot}/lib/plugins/${plugin_name}":
        source  => "puppet:///modules/dokuwiki/plugins/${plugin_name}",
        owner   => 'www-data',
        group   => 'www-data',
        recurse => true,
        mode    => '0550',
    }
}
