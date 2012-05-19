#!/usr/bin/perl -p

BEGIN {
    use v5.12;
    use warnings;

    our %tags = (
        exercise => 'success',
        alert    => 'error',
        info     => 'info'
    );
}

for my $tag (keys %tags) {
    my $class = $tags{$tag};

    s#<$tag>#<section class="alert alert-$class">#;
    s#</$tag>#\n</section>#;
}
