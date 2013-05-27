#!/usr/bin/env perl

use Mojolicious::Lite;
use DBI;
use DBD::mysql;

# Create a database connection as an application attribute
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

  # Prepare our query
  # NOTE: q() is the same as surrounding our text in single quotes.
  my $query = q(
    SELECT es.synonym, sr.name, g.seq_region_start, g.seq_region_end
    FROM seq_region sr, gene g, external_synonym es
    WHERE es.xref_id = g.display_xref_id
    AND sr.seq_region_id = g.seq_region_id
    AND es.synonym IS NOT NULL
    ORDER BY g.seq_region_start ASC
    LIMIT 500
  );
  my $dbh = $self->app->dbh;
  my $sth = $dbh->prepare($query);

  # Run the query
  $sth->execute();

  # Stash the query string and the results
  $self->stash(
    query   => $query,
    results => $sth->fetchall_arrayref()
  );

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
% title "Example Database Query";
<h1>Example Database Query</h1>
<p>
  The table below was created by running this query on the
  'homo_sapiens_core' database at
  <a href="http://www.ensembl.org">Ensembl</a>
</p>
<pre>
  <%= $query %>
</pre>
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

