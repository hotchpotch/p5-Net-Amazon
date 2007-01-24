# -*- perl -*-
# !!! DO NOT EDIT !!!
# This file was automatically generated.
package Net::Amazon::Validate::ItemSearch::us::State;

use 5.006;
use strict;
use warnings;

sub new {
    my ($class , %options) = @_;
    my $self = {
        '_default' => 'Music',
        %options,
    };

    push @{$self->{_options}}, 'Apparel';
    push @{$self->{_options}}, 'Automotive';
    push @{$self->{_options}}, 'Baby';
    push @{$self->{_options}}, 'Classical';
    push @{$self->{_options}}, 'DVD';
    push @{$self->{_options}}, 'DigitalMusic';
    push @{$self->{_options}}, 'Electronics';
    push @{$self->{_options}}, 'GourmetFood';
    push @{$self->{_options}}, 'Grocery';
    push @{$self->{_options}}, 'HealthPersonalCare';
    push @{$self->{_options}}, 'Jewelry';
    push @{$self->{_options}}, 'Kitchen';
    push @{$self->{_options}}, 'Magazines';
    push @{$self->{_options}}, 'Miscellaneous';
    push @{$self->{_options}}, 'Music';
    push @{$self->{_options}}, 'MusicTracks';
    push @{$self->{_options}}, 'OfficeProducts';
    push @{$self->{_options}}, 'OutdoorLiving';
    push @{$self->{_options}}, 'PCHardware';
    push @{$self->{_options}}, 'PetSupplies';
    push @{$self->{_options}}, 'Photo';
    push @{$self->{_options}}, 'Restaurants';
    push @{$self->{_options}}, 'Software';
    push @{$self->{_options}}, 'SportingGoods';
    push @{$self->{_options}}, 'Tools';
    push @{$self->{_options}}, 'Toys';
    push @{$self->{_options}}, 'VHS';
    push @{$self->{_options}}, 'Video';
    push @{$self->{_options}}, 'VideoGames';
    push @{$self->{_options}}, 'Wireless';

    bless $self, $class;
}

sub user_or_default {
    my ($self, $user) = @_;
    if (defined $user && length($user) > 0) {    
        return $self->find_match($user);
    } 
    return $self->default();
}

sub default {
    my ($self) = @_;
    return $self->{_default};
}

sub find_match {
    my ($self, $value) = @_;
    for (@{$self->{_options}}) {
        return $_ if lc($_) eq lc($value);
    }
    die "$value is not a valid value for us::State!\n";
}

1;

__END__

=head1 NAME

Net::Amazon::Validate::ItemSearch::us::State;

=head1 DESCRIPTION

The default value is Music, unless mode is specified.

The list of available values are:

    Apparel
    Automotive
    Baby
    Classical
    DVD
    DigitalMusic
    Electronics
    GourmetFood
    Grocery
    HealthPersonalCare
    Jewelry
    Kitchen
    Magazines
    Miscellaneous
    Music
    MusicTracks
    OfficeProducts
    OutdoorLiving
    PCHardware
    PetSupplies
    Photo
    Restaurants
    Software
    SportingGoods
    Tools
    Toys
    VHS
    Video
    VideoGames
    Wireless

=cut
