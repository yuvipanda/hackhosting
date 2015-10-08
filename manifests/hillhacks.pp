class hillhacks {
    dokuwiki { 'wiki.hillhacks.in':
    }

    dokuwiki::plugin { 'captcha':
        hostname => 'wiki.hillhacks.in',
        require  => Dokuwiki['wiki.hillhacks.in'],
    }
}
