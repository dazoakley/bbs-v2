#! /usr/bin/env perl

use Mojolicious::Lite;
use DBI;
use DBD::mysql;

app->attr(dbh => sub {
  my $self = shift;
  my $dbh  = DBI->connect(
    'DBI:mysql:homo_sapiens_core_47_36i:ensembldb.sanger.ac.uk',
    'anonymous'
  );
  return $dbh;
});

get '/' => sub {
  my $self = shift;
  $self->render('index');
};

get '/results' => sub {
  my $self = shift;
  my $gene = $self->param('gene');

  my $query = q(
    SELECT es.synonym, sr.name, g.seq_region_start, g.seq_region_end
    FROM seq_region sr, gene g, external_synonym es
    WHERE es.xref_id = g.display_xref_id
    AND sr.seq_region_id = g.seq_region_id
    AND es.synonym LIKE ?
    ORDER BY g.seq_region_start ASC
    LIMIT 500
  );
  my $dbh = $self->app->dbh;
  my $sth = $dbh->prepare($query);

  $sth->execute($gene);

  $self->stash(
    gene    => $gene,
    query   => $query,
    results => $sth->fetchall_arrayref()
  );

  $self->render('results');
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
<form method="get" action="<%= url_for '/results' %>">
  <p>
    Gene:
    <input type="text" name="gene" size="15" />
    <input type="submit" value="Search" />
    <input type="reset" value="Clear" />
  </p>
</form>

@@ results.html.ep
% layout 'default';
% title "Search Results For: '$gene'";
<h1>Search Results For: '<%= $gene %>'</h1>
<p>
  The table below was created by running this query on the
  'homo_sapiens_core' database at
  <a href="http://www.ensembl.org">Ensembl</a>
</p>
<pre><%= $query %></pre>
<table border="1" cellpadding="3" cellspacing="3">
  <thead>
    <tr>
      <th>External Synonym</th>
      <th>Seq Region Name</th>
      <th>Seq Region Start</th>
      <th>Seq Region End</th>
    </tr>
  </thead>
  <tbody>
    <% foreach my $result (@{$results}) { %>
      <tr>
        <% foreach my $item (@{$result}) { %>
          <td><%= $item %></td>
        <% } %>
      </tr>
    <% } %>
  </tbody>
</table>

