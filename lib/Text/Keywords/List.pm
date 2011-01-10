package Text::Keywords::List;
# ABSTRACT: Primitive keywords List class

use Moo;

has keywords => (
	is => 'ro',
	default => sub {[]},
);

sub count {
	scalar @{shift->keywords};
}

1;