#!/usr/bin/env perl

use Mojolicious::Lite;

get '/' => sub {
  my $self = shift;
  $self->render('index');
};

get '/foo' => sub {
  my $self = shift;
  $self->render('foo');
};

get '/protein/show/:id' => sub {
  my $self = shift;
  $self->render('protein_show');
};

app->start;
__DATA__

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head>
    <title><%= title %></title>
  </head>
  <body>
    <%= content %>
  </body>
</html>

@@ index.html.ep
% layout 'default';
% title 'Home Page';
<h1>Home Page</h1>

@@ foo.html.ep
% layout 'default';
% title 'Foo';
<h1>Bar</h1>

@@ protein_show.html.ep
% layout 'default';
% title "PDB Structure: $id";
<img src="http://www.rcsb.org/pdb/images/<%= $id %>_bio_r_500.jpg"></img>

