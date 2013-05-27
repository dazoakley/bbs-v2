#! /usr/bin/env perl

use Mojolicious::Lite;

get '/' => sub {
  my $self = shift;
  $self->render('index');
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
% title 'Basic Web Form';
<h1>Basic Web Form Example</h1>
<p>
  Please enter a gene name and click 'Search' to get a
  report of information for a gene.
</p>
<p>
  (If you are at loss for a something to search for,
  try <strong>p53</strong> or <strong>ATP%</strong>).
</p>
<form method="get" action="/results">
  <p>
    Gene:
    <input type="text" name="gene" size="15" />
    <input type="submit" value="Search" />
    <input type="reset" value="Clear" />
  </p>
</form>

