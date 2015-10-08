class hillhacks {
    dokuwiki { 'wiki.hillhacks.in':
    }

    dokuwiki::plugin { [
        'sqlite',
        'data',
        'bureaucracy',
        'captcha'
    ]:
        hostname => 'wiki.hillhacks.in',
        require  => Dokuwiki['wiki.hillhacks.in'],
    }
}
