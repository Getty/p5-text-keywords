package Text::Keywords;
# ABSTRACT: Setup Text::Keywords::Container for analyzing some text

use Moo;

has containers => (
	is => 'rw',
	default => sub {[]},
);

sub from {
	my ( $self, $primary, $secondary ) = @_;
	
	my @founds;

	for (@{$self->containers}) {
		push @founds, $_->find_keywords($primary, $secondary);
	}
	
	@founds = $self->modify_founds(@founds);

	return @founds;
}

sub modify_founds {
	my ( $self, @founds ) = @_;
	return @founds;
}

1;
