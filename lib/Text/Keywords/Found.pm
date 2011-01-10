package Text::Keywords::Found;
# ABSTRACT: Class for a keyword found over a specific Text::Keywords::Container

use Moo;

has keyword => (
	is => 'ro',
	required => 1,
);

has found => (
	is => 'ro',
	required => 1,
);

has matches => (
	is => 'ro',
	default => sub {[]},
);

has in_primary => (
	is => 'ro',
	required => 1,
);

has in_secondary => (
	is => 'ro',
	required => 1,
);

has container => (
	is => 'ro',
	required => 1,
);

has list => (
	is => 'ro',
	required => 1,
);

1;