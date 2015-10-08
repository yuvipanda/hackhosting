<?php
// THIS FILE IS MANAGED BY PUPPET
// Just load all files under local.d!
// This way we can put in config there from puppet / other sources
// Without it all having to be one file
foreach( glob( __DIR__ . "/local.d/*.php" ) as $filename ) {
    include $filename;
}
