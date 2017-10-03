use utf8;
package AmuseWikiFarm::Schema::Result::Title;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

AmuseWikiFarm::Schema::Result::Title - Texts metadata

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<title>

=cut

__PACKAGE__->table("title");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 title

  data_type: 'text'
  default_value: (empty string)
  is_nullable: 0

=head2 subtitle

  data_type: 'text'
  default_value: (empty string)
  is_nullable: 0

=head2 lang

  data_type: 'varchar'
  default_value: 'en'
  is_nullable: 0
  size: 3

=head2 date

  data_type: 'text'
  default_value: (empty string)
  is_nullable: 0

=head2 notes

  data_type: 'text'
  default_value: (empty string)
  is_nullable: 0

=head2 source

  data_type: 'text'
  default_value: (empty string)
  is_nullable: 0

=head2 list_title

  data_type: 'text'
  default_value: (empty string)
  is_nullable: 0

=head2 author

  data_type: 'text'
  default_value: (empty string)
  is_nullable: 0

=head2 uid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 attach

  data_type: 'text'
  is_nullable: 1

=head2 pubdate

  data_type: 'datetime'
  is_nullable: 0

=head2 status

  data_type: 'varchar'
  default_value: 'unpublished'
  is_nullable: 0
  size: 16

=head2 f_path

  data_type: 'text'
  is_nullable: 0

=head2 f_name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 f_archive_rel_path

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 f_timestamp

  data_type: 'datetime'
  is_nullable: 0

=head2 f_timestamp_epoch

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 f_full_path_name

  data_type: 'text'
  is_nullable: 0

=head2 f_suffix

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 f_class

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 uri

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 deleted

  data_type: 'text'
  default_value: (empty string)
  is_nullable: 0

=head2 slides

  data_type: 'integer'
  default_value: 0
  is_nullable: 0
  size: 1

=head2 text_structure

  data_type: 'text'
  default_value: (empty string)
  is_nullable: 0

=head2 cover

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 teaser

  data_type: 'text'
  default_value: (empty string)
  is_nullable: 0

=head2 sorting_pos

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 sku

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 site_id

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 16

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "title",
  { data_type => "text", default_value => "", is_nullable => 0 },
  "subtitle",
  { data_type => "text", default_value => "", is_nullable => 0 },
  "lang",
  { data_type => "varchar", default_value => "en", is_nullable => 0, size => 3 },
  "date",
  { data_type => "text", default_value => "", is_nullable => 0 },
  "notes",
  { data_type => "text", default_value => "", is_nullable => 0 },
  "source",
  { data_type => "text", default_value => "", is_nullable => 0 },
  "list_title",
  { data_type => "text", default_value => "", is_nullable => 0 },
  "author",
  { data_type => "text", default_value => "", is_nullable => 0 },
  "uid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "attach",
  { data_type => "text", is_nullable => 1 },
  "pubdate",
  { data_type => "datetime", is_nullable => 0 },
  "status",
  {
    data_type => "varchar",
    default_value => "unpublished",
    is_nullable => 0,
    size => 16,
  },
  "f_path",
  { data_type => "text", is_nullable => 0 },
  "f_name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "f_archive_rel_path",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "f_timestamp",
  { data_type => "datetime", is_nullable => 0 },
  "f_timestamp_epoch",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "f_full_path_name",
  { data_type => "text", is_nullable => 0 },
  "f_suffix",
  { data_type => "varchar", is_nullable => 0, size => 16 },
  "f_class",
  { data_type => "varchar", is_nullable => 0, size => 16 },
  "uri",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "deleted",
  { data_type => "text", default_value => "", is_nullable => 0 },
  "slides",
  { data_type => "integer", default_value => 0, is_nullable => 0, size => 1 },
  "text_structure",
  { data_type => "text", default_value => "", is_nullable => 0 },
  "cover",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "teaser",
  { data_type => "text", default_value => "", is_nullable => 0 },
  "sorting_pos",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "sku",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "site_id",
  { data_type => "varchar", is_foreign_key => 1, is_nullable => 0, size => 16 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<uri_f_class_site_id_unique>

=over 4

=item * L</uri>

=item * L</f_class>

=item * L</site_id>

=back

=cut

__PACKAGE__->add_unique_constraint("uri_f_class_site_id_unique", ["uri", "f_class", "site_id"]);

=head1 RELATIONS

=head2 muse_headers

Type: has_many

Related object: L<AmuseWikiFarm::Schema::Result::MuseHeader>

=cut

__PACKAGE__->has_many(
  "muse_headers",
  "AmuseWikiFarm::Schema::Result::MuseHeader",
  { "foreign.title_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 revisions

Type: has_many

Related object: L<AmuseWikiFarm::Schema::Result::Revision>

=cut

__PACKAGE__->has_many(
  "revisions",
  "AmuseWikiFarm::Schema::Result::Revision",
  { "foreign.title_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 site

Type: belongs_to

Related object: L<AmuseWikiFarm::Schema::Result::Site>

=cut

__PACKAGE__->belongs_to(
  "site",
  "AmuseWikiFarm::Schema::Result::Site",
  { id => "site_id" },
  { is_deferrable => 0, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 text_internal_links

Type: has_many

Related object: L<AmuseWikiFarm::Schema::Result::TextInternalLink>

=cut

__PACKAGE__->has_many(
  "text_internal_links",
  "AmuseWikiFarm::Schema::Result::TextInternalLink",
  { "foreign.title_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 text_months

Type: has_many

Related object: L<AmuseWikiFarm::Schema::Result::TextMonth>

=cut

__PACKAGE__->has_many(
  "text_months",
  "AmuseWikiFarm::Schema::Result::TextMonth",
  { "foreign.title_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 title_categories

Type: has_many

Related object: L<AmuseWikiFarm::Schema::Result::TitleCategory>

=cut

__PACKAGE__->has_many(
  "title_categories",
  "AmuseWikiFarm::Schema::Result::TitleCategory",
  { "foreign.title_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 title_stats

Type: has_many

Related object: L<AmuseWikiFarm::Schema::Result::TitleStat>

=cut

__PACKAGE__->has_many(
  "title_stats",
  "AmuseWikiFarm::Schema::Result::TitleStat",
  { "foreign.title_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 categories

Type: many_to_many

Composing rels: L</title_categories> -> category

=cut

__PACKAGE__->many_to_many("categories", "title_categories", "category");

=head2 monthly_archives

Type: many_to_many

Composing rels: L</text_months> -> monthly_archive

=cut

__PACKAGE__->many_to_many("monthly_archives", "text_months", "monthly_archive");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2017-07-05 11:44:55
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ZjKr5/w4EwWqYnnx6V9Iow

=head2 translations

Resultset with the same Title class with the same C<uid> in the
header, excluding the caller.

=cut

__PACKAGE__->has_many(
    translations => "AmuseWikiFarm::Schema::Result::Title",
    sub {
        my $args = shift;
        return {
            "$args->{foreign_alias}.id"  => { '!=' => { -ident => "$args->{self_alias}.id" } },
            "$args->{foreign_alias}.uid" => { -ident => "$args->{self_alias}.uid",
                                              '!=' => ''},
        };
    },
    { cascade_copy => 0, cascade_delete => 0 },
   );


=head2 sibling_texts

Resultset with the same Title class with same C<site_id>, same
C<f_class> (C<text> or C<special> and same C<status>.

=cut

__PACKAGE__->has_many(sibling_texts => "AmuseWikiFarm::Schema::Result::Title",
                      sub {
                          my $args = shift;
                          return {
                                  "$args->{foreign_alias}.site_id" => {-ident => "$args->{self_alias}.site_id" },
                                  "$args->{foreign_alias}.f_class" => {-ident => "$args->{self_alias}.f_class" },
                                  "$args->{foreign_alias}.status"  => {-ident => "$args->{self_alias}.status"  },
                                 };
                      },
                      { cascade_copy => 0, cascade_delete => 0 });

use File::Spec;
use Text::Amuse::Compile::Utils qw/read_file/;
use DateTime;
use File::Copy qw/copy/;
use AmuseWikiFarm::Log::Contextual;
use Text::Amuse;
use HTML::Entities qw/decode_entities encode_entities/;
use AmuseWikiFarm::Utils::Amuse qw/cover_filename_is_valid to_json from_json/;
use Path::Tiny qw//;
use HTML::LinkExtor; # from HTML::Parser
use HTML::TreeBuilder;
use URI;

=head2 listing

The following methods return a string, which may be empty if no
related record is found.

=head3 author_list

Return a comma separated list of authors for the current text.

=head3 topic_list

Return a comma separated list of topics for the current text.

=head3 category_listing($type, $separator)

Return a string with the list of category of type $type (so far
<topic> or <author>) separated by $separator.

=head3 authors

A result set for related authors

=head3 topics

A result set for related topics

=cut

sub topics {
    return shift->categories->by_type('topic');
}

sub authors {
    return shift->categories->by_type('author');
}


sub topic_list {
    return shift->category_listing(topic => ', ');
}

sub author_list {
    return shift->category_listing(author => ', ');
}

sub category_listing {
    my ($self, $type, $sep) = @_;
    my @cats;
    my @results = $self->categories->by_type($type);
    foreach my $cat (@results) {
        push @cats, $cat->name;
    }
    @cats ? return join($sep, @cats) : return '';
}

=head2 Published text

Logic to determine if a file is published or not. These routine should
be called on indexing, not on searching, because they depend on the
current datetime. Only texts with a C<published> status should be
served directly.

Recognized statuses:

=over 4

=item deleted

File has been deleted

=item deferred

File has a publishing date in the future

=item published

File is up and running

=item editing

File is stashed in the staging area and should not be served. It will
have some revisions attached. The only real things set here are uri
and id. Everything else is bogus, and is used only to hook the
revisions, and prevent duplications and such.

=back

=head2 is_published

Return true when the status is set to C<published>

=head2 update_text_status

This method should be called only on indexing. It will check the
deleted column and the pubdate and update the status column.

=cut

sub update_text_status {
    my ($self, $logger) = @_;
    my $old_status = $self->status;
    if ($self->deleted) {
        $self->status('deleted');
    }
    elsif($self->pubdate->epoch > DateTime->now->epoch) {
        $self->status('deferred');
    }
    else {
        $self->status('published');
    }
    if ($self->is_changed) {
        my $msg = "Changing " . $self->uri . " status from $old_status to " . $self->status . "\n";
        if ($logger) {
            $logger->($msg);
        }
        else {
            warn $msg;
        }
        $self->update;
    }
    $self->_check_status_file if $self->is_published;
    return;
}

sub _check_status_file {
    my $self = shift;
    # override if we find a status file, as we should
    my $statusfile = $self->filepath_for_ext('status');
    unless (-f $statusfile) {
        die "<$statusfile> not found!\n";
        return;
    }

    my $statusline = read_file($statusfile) || '';

    if ($statusline =~ m/^(OK|DELETED|FAILED)/) {
        my $status = $1;
        if ($status eq 'OK') {
            # nothing to do
        }
        elsif ($status eq 'DELETED') {
            warn "This should not happen! $statusline, but we're published!\n";
        }
        elsif ($status eq 'FAILED') {
            $self->deleted('Compilation failed!');
            $self->status('deleted');
            $self->update;
            warn "Compilation failed, setting status to deleted\n";
        }
        else {
            die "This shouldn't happen";
        }
    }
    else {
        warn "$statusfile is not parsable <$statusline>\n";
    }
}

sub is_published {
    return shift->status eq 'published';
}

sub is_regular {
    return shift->f_class eq 'text';
}


sub is_deferred {
    return shift->status eq 'deferred';
}

=head2 can_spawn_revision

Return true if the file exists in the tree, hence can be copied to the
staging area.

=head2 muse_file_exists_in_tree

Implementation and alias for C<can_spawn_revision>

=cut

sub muse_file_exists_in_tree {
    my $self = shift;
    if (-f $self->f_full_path_name) {
        return 1;
    }
    else {
        return 0;
    }
}


sub can_spawn_revision {
    return shift->muse_file_exists_in_tree;
}

=head2 File serving

=head3 filepath_for_ext($ext)

Given the extension (without the leading dot) as argument, return the
filename. It's not guaranteed to exist, though.

The method concatenates C<f_path>, C<f_name>, a dot and the extension,
using L<File::Spec>.


=cut

sub filepath_for_ext {
    my ($self, $ext) = @_;
    $ext ||= "html";
    return File::Spec->catfile($self->f_path,
                               $self->f_name . '.' . $ext);
}

sub check_if_file_exists {
    my ($self, $ext) = @_;
    die "Bad usage" unless $ext;
    if (-f $self->filepath_for_ext($ext)) {
        return 1;
    }
    else {
        return;
    }
}



=head3 html_body

Retrieve the bare HTML, if present.

=head3 muse_body

Retrieve the Muse source.

=cut

sub html_body {
    return shift->_get_body('bare.html');
}

sub muse_body {
    return shift->_get_body('muse');
}

sub _get_body {
    my ($self, $ext) = @_;
    die "Wrong usage" unless $ext;
    my $file = $self->filepath_for_ext($ext);
    return '' unless -f $file;
    my $text = read_file($file);
    return $text;
}

=head3 pages_estimated

Returns the expected page of output. We consider a page 2000 bytes.
This is not really true for cyrillic languages, so we double it for
them.

=cut

sub pages_estimated {
    my $self = shift;
    my $path = $self->filepath_for_ext('muse');
    my %factors = (
                   mk => 2,
                   ru => 2,
                  );
    if (-f $path) {
        my $size = -s $path;
        if (my $factor = $factors{$self->lang}) {
            $size = $size / $factor;
        }
        my $pages = sprintf('%d', $size / 2000);
        return $pages || 1;
    }
    else {
        return;
    }
}


=head2 new_revision($force)

Create a new revision for the current text. With an optional true
argument, skip the copying of the files. This is true when you're
creating a new revision from scratch, so the original file is not in
place.

=cut

sub new_revision {
    my ($self, $force) = @_;
    my $can_spawn = $self->can_spawn_revision;

    unless ($can_spawn || $force) {
        die "Can't create a revision from id: " . $self->id;
    }
    my $revision = $self->revisions->create({
                                             # help dbic to cope with this
                                             site_id => $self->site->id,
                                             updated => DateTime->now,
                                            });
    my $uri = $revision->title->uri;
    die "Couldn't find uri for belonging title!" unless $uri;
    my $target_dir = File::Spec->catdir($self->site->staging_dir, $revision->id);
    if (-d $target_dir) {
        # mm, some db backend is reusing the ids, so clean it up
        opendir(my $dh, $target_dir) or die "Can't open dir $target_dir $!";
        my @cleanup = grep {
            -f File::Spec->catfile($target_dir, $_)
        } readdir($dh);
        closedir $dh;
        foreach my $clean (@cleanup) {
            log_info { "Removing $clean in $target_dir\n" };
            unlink File::Spec->catfile($target_dir, $clean) or log_warn { "Cannot remove $target_dir/$clean $!" };
        }
    }
    else {
        mkdir $target_dir or  die "Couldn't create $target_dir $!";
    }
    my $fullpath = File::Spec->catfile($target_dir, $uri . '.muse');
    $revision->f_full_path_name($fullpath);

    # copy the file twice. The first is the starting file, the second the
    # actual revision.

    if ($can_spawn) {
        copy($self->f_full_path_name, $revision->starting_file) or die $!;
        copy($self->f_full_path_name, $revision->f_full_path_name) or die $!;
    }

    # update and return a fresh copy
    $revision->update->discard_changes;
    return $revision;
}

=head2 URIs

WARNING! For practical and performance concerns, here we hardcode the
catalyst app url, instead of calling uri_for with 2 or 3 arguments

=cut

sub full_uri {
    my ($self, $uri) = @_;
    $uri ||= $self->uri;
    return $self->base_path . $uri;
}

sub base_path {
    my $self = shift;
    my $class = $self->f_class;
    if ($class eq 'special') {
        return '/special/';
    }
    elsif ($class eq 'text') {
        return '/library/';
    }
    else {
        die "WTF";
    }
}

sub full_edit_uri {
    my $self = shift;
    return $self->full_uri . '/edit';
}

sub full_header_api {
    my $self = shift;
    return $self->full_uri . '/json';
}

sub full_rebuild_uri {
    my $self = shift;
    return $self->full_uri . '/rebuild';
}

sub cover_file {
    my $self = shift;
    if (my $uri = $self->valid_cover) {
        if (my $att = $self->site->attachments->by_uri($uri)) {
            return $att;
        }
    }
    return undef;
}

sub cover_uri {
    my $self = shift;
    if (my $att = $self->cover_file) {
        return $att->full_uri;
    }
    return;
}

sub cover_thumbnail_uri {
    my $self = shift;
    if (my $att = $self->cover_file) {
        return $att->thumbnail_uri;
    }
    return;
}

sub cover_small_uri {
    my $self = shift;
    if (my $att = $self->cover_file) {
        return $att->small_uri;
    }
    return;
}

sub cover_large_uri {
    my $self = shift;
    if (my $att = $self->cover_file) {
        return $att->large_uri;
    }
    return;
}



=head2 Attached pdf (#ATTACH directive)

=head2 attached_pdfs

Return an arrayref with the list of attached pdfs which are actually
stored in the tree and indexed in the db, or nothing.

=cut

sub attached_objects {
    my $self = shift;
    my $string = $self->attach;
    return unless $string;
    my @tokens = split(/[\s;,]+/, $string);
    my @indexed;
    foreach my $token (@tokens) {
        next unless $token;
        if (my $att = $self->site->attachments->by_uri($token)) {
            push @indexed, $att;
        }
    }
    return @indexed;
}

sub attached_pdfs {
    my $self = shift;
    my @all = $self->attached_objects;
    @all ? return [ map { $_->uri } @all ] : return;
}

=head2 in_tree_uri

Return the uri for the file, minus the extension, in the repo tree.
Needed by the static generator.

=cut

sub in_tree_uri {
    my $self = shift;
    my $relpath = $self->f_archive_rel_path;
    $relpath =~ s![^a-z0-9]!/!g;
    return join('/', '.', $relpath, $self->uri);

}

=head2 recent_changes_uri

Return the git link if there the site is setup for that

=cut

sub recent_changes_uri {
    my $self = shift;
    my $site = $self->site;
    if ($site->repo_is_under_git) {
        my $path = File::Spec->abs2rel($self->f_full_path_name,
                                       $site->repo_root);
        # probably we have to tweak this if running under windows, but
        # so far not a problem.
        my $site_id = $site->id;
        return "/git/$site_id/log/$path";
    }
    else {
        return;
    }
}

=head1 METHOD MODIFIERS

Delete method is overload to update the category text count.

=cut

before delete => sub {
    my $self = shift;
    log_debug { "Deleting " . $self->full_uri . " from xapian" };
    $self->site->xapian->delete_text($self);
};

sub muse_object {
    my $self = shift;
    return Text::Amuse->new(file => $self->f_full_path_name);
}

sub text_html_structure {
    my ($self, $force) = @_;
    if ($force or !$self->text_structure) {
        my $struct = $self->_parse_text_structure;
        Dlog_debug { "Retriving text structure: $_" } $struct;
        $self->text_structure(to_json($struct));
        $self->update;
    }
    return from_json($self->text_structure);
}

sub _parse_text_structure {
    my ($self) = @_;
    my $muse = $self->muse_object;
    my @out = ({
                index => 'pre',
                level => 0,
                title => '',
                text_size => 0, # irrelevant
                toc_index => 0,
               });

    # Text::Amuse doens't care at all what it returns from
    # raw_html_toc. It just scans the pieces returned by as_splat_html
    # like this: for (my $i = 0; $i < @chunks; $i++) {
    # push @out, $chunks[$i] if $partials->{$i};
    # } so what we do here is the right thing.

    my $toc_index = 0;
    my $index = 0;
    foreach my $piece ($muse->as_splat_html) {
        my $tree = HTML::TreeBuilder->new_from_content($piece);

        my %data = (index => $index++,
                    level => 0,
                    text_size => length($tree->as_text),
                   );

        # find the level and the title
        my ($first) = $tree->look_down(_tag => 'body')->content_list;
        if ($first->tag =~ m/h([1-6])/) {
            $data{level} = $1 - 1;
            $data{title} = encode_entities($first->as_text, q{<>&"'});
            $data{toc_index} = ++$toc_index;
        }
        else {
            # this is a lonely initial element, so it's a special case
            die "This shouldn't happen! No headers should happen only at the beginning"
              unless $data{index} == 0;
            $data{title} = $self->title;
            $data{toc_index} = 0;
        }

        # cleanup and push
        $tree->delete;
        push @out, \%data;
    }
    if ($self->notes || $self->source) {
        push @out, {
                    index => 'post',
                    level => 0,
                    title => '',
                    text_size => 0, # irrelevant
                    toc_index => 0,
                   };
    }
    return \@out;
}


sub _retrieve_text_structure {
    my $self = shift;
    # report the error if by chance we call this.
    log_error { "Calling _retrieve_text_structure is DEPRECATED" };
    my $muse = $self->muse_object;
    my @toc = $muse->raw_html_toc;
    my $index = 0;
    my @out = ({
                index => 'pre',
                padding => 1,
                highlevel => 1,
                level => 0,
               });
    while (@toc) {
        my $summary = shift @toc;
        my $data = {
                    title => $summary->{string},
                    index => $index++,
                    toc => $summary->{index},
                    padding => 1,
                    level => ($summary->{index} ? $summary->{level} : 0),
                   };
        if ($summary->{index}) {
            $data->{padding} += $summary->{level};
        }
        if ($data->{toc} && $data->{padding} < 4) {
            $data->{highlevel} = 1;
        }
        $data->{padding} *= 2;
        push @out, $data;
    }
    if ($self->notes || $self->source) {
        push @out, {
                    index => 'post',
                    padding => 1,
                    highlevel => 1,
                    level => 0,
                   };
    }
    return \@out;
}

=head2 sorted_categories($type)

Return a sorted list of categories where the type is argument.

To be used when prefetching the categories, when the query already was
executed.

=cut

sub sorted_categories {
    my ($self, $type) = @_;
    return sort { $a->sorting_pos <=> $b->sorting_pos }
      grep { $_->type eq $type } $self->categories->all;
}

sub opds_entry {
    my ($self) = @_;
    return unless $self->check_if_file_exists('epub');
    my %out = (
               title => $self->_clean_html($self->title),
               href => $self->full_uri,
               authors => [ map { +{ name => $_->name, uri => $_->full_uri } }
                            grep { $_->type eq 'author' } $self->categories->all ],
               epub => $self->full_uri . '.epub',
               language => $self->lang || 'en',
               issued => $self->date || '',
               updated => $self->pubdate,
               summary => $self->_clean_html($self->subtitle || ''),
               files => [ $self->full_uri . '.epub' ],
              );
    my @desc;
    if (my $teaser = $self->teaser) {
        push @desc, '<div>'. $self->teaser . '</div><div><br></div>';
    }

    if (my $image = $self->cover_uri) {
        $out{image} = $image;
        $out{thumbnail} = $self->cover_thumbnail_uri;
    }
    foreach my $method (qw/notes source/) {
        my $string = $self->$method;
        if (length($string)) {
            push @desc, '<div>' . $string . '</div>';
        }
    }
    if (@desc) {
        $out{description} = join("\n", @desc);
    }
    return \%out;
}

sub _clean_html {
    my ($self, $string) = @_;
    return "" unless defined $string;
    $string =~ s/<.+?>//g;
    return decode_entities($string);
}

sub pubdate_locale {
    my ($self, $locale) = @_;
    $locale ||= 'en';
    my $dt = DateTime->from_object(object => $self->pubdate, locale => $locale);
    return $dt->format_cldr($dt->locale->date_format_medium);
}

sub insert_stat_record {
    my ($self, $type, $user_agent) = @_;
    my $now = DateTime->now;
    my $site_id = $self->site_id;
    $self->add_to_title_stats({
                               site_id => $site_id,
                               accessed => $now,
                               type => $type || '',
                               user_agent => $user_agent || '',
                              });
}

sub valid_cover {
    my $self = shift;
    return cover_filename_is_valid($self->cover);
}

sub monthly_archive {
    # it's a many to many, but someone should explain to me why it
    # would belong to more of them.
    return shift->monthly_archives->first;
}

sub newer_texts {
    my $self = shift;
    return $self->sibling_texts->newer_than($self->pubdate);
}

sub older_texts {
    my $self = shift;
    return $self->sibling_texts->older_than($self->pubdate);
}

sub newer_text {
    return shift->newer_texts->search(undef, { rows => 1 })->first;
}

sub older_text {
    return shift->older_texts->search(undef, { rows => 1 })->first;
}

sub path_tiny {
    return Path::Tiny::path(shift->f_full_path_name);
}

sub parent_dir {
    shift->path_tiny->parent->stringify;
}

sub raw_headers {
    my $self = shift;
    my $all = $self->muse_headers;
    my %out;
    while (my $header = $all->next) {
        $out{$header->muse_header} = $header->muse_value;
    }
    return \%out;
}

sub backlinks {
    my $self = shift;
    return $self->site->text_internal_links
      ->by_uri_and_class($self->uri, $self->f_class)
      ->search_related(title => undef,
                       { distinct => 1 })
      ->status_is_published
      ->sorted_by_title;
}

sub scan_and_store_links {
    my ($self, $logger) = @_;
    if ($logger) {
        $logger->("Scanning links in " . $self->uri . "\n");
    }
    my $file = $self->filepath_for_ext('bare.html');
    my $site = $self->site;
    my %vhosts = map { $_->name => 1 } $site->vhosts;
    $vhosts{$site->canonical} = 1;
    my @uris;
    if (-f $file) {
        my $cb = sub {
            my($tag, %links) = @_;
            if ($tag eq 'a') {
                if (my $uri = $links{href}) {
                    if (!$uri->host || $vhosts{$uri->host}) {
                        push @uris, $uri;
                    }
                }
            }
        };
        my $parser = HTML::LinkExtor->new($cb, $site->canonical_url . $self->base_path);
        $parser->parse_file($file);
    }
    else {
        log_error { "$file doesn't exist for link storing" };
    }

    # now we collected all the uris which reference titles in the same site.
    # null out existing
    $self->text_internal_links->delete;
    my %type_map = (
                    library => 'text',
                    special => 'special',
                   );
    foreach my $uri (@uris) {
        if ($uri->path =~ m/\A\/(library|special)\/([0-9a-z-]+)/) {
            my $text_uri = $2;
            my $f_class = $type_map{$1};
            unless ($f_class eq $self->f_class and
                    $text_uri eq $self->uri) {
                $self->add_to_text_internal_links({
                                                   site => $site,
                                                   f_class => $f_class,
                                                   uri => $text_uri,
                                                   full_link => "$uri",
                                                  });
            }
        }
    }
}

sub autogenerate_teaser {
    my ($self, $size, $logger) = @_;
    return if $size < 1;
    return if $self->teaser;
    log_debug { "Autogenerating teaser in " . $self->uri };
    $logger->("Generating teaser") if $logger;
    $self->update({ teaser => $self->_create_teaser($size) });
}

sub _create_teaser {
    my ($self, $size) = @_;
    die "Missing size" unless defined $size;
    my $file = Path::Tiny::path($self->filepath_for_ext('bare.html'));
    my $base = $self->base_path;
    if ($file->exists) {
        my $tree = HTML::TreeBuilder->new_from_content($file->slurp_utf8);
        $tree->elementify;
        my $body = $tree->look_down(id => 'thework');
        teaser_cleanup_body($body);
        my $total = 0;
        my $ellipsed = 0;
        foreach my $child ($body->content_list) {
            if (ref $child) {
                if ($total > $size) {
                    $child->delete;
                    $ellipsed++;
                }
                else {
                    $total += length($child->as_text);
                }
            }
            else {
                $total += length($child);
            }
        }
        foreach my $links (@{ $body->extract_links }) {
            my ($link, $element, $attr, $tag) = @$links;
            $element->attr($attr => URI->new_abs($link, $base)->as_string) if $link ne '#';
        }
        if ($ellipsed) {
            $body->push_content([ p => '...', { class => 'amw-teaser-ellipsis' } ]);
        }
        else {
            # see amuse.js
            $body->push_content([ div => '', { class => 'amw-teaser-no-ellipsis' } ]);
        }
        log_debug { "Ellipsed $ellipsed nodes" };
        my $html = $body->as_HTML(q{<>&"'}, ' ', {});
        $tree->delete; # shouldn't be needed, but hey
        return $html;
    }
    else {
        return '';
    }
}

# recursive function to traverse all the tree
sub teaser_cleanup_body {
    my $elt = shift;
    $elt->normalize_content;
    # remove the ids.
    $elt->attr(id => undef);
    # remove internal linking
    if (my $href = $elt->attr('href')) {
        if ($href =~ m/\A#/) {
            $elt->attr(href => '#');
        }
    }
    # convert h to boldened divs
    if ($elt->tag =~ m/\Ah[1-6]\z/) {
        $elt->tag('div');
        $elt->attr(style => 'font-weight:bold');
    }
    foreach my $child ($elt->content_list) {
        if (ref $child) {
            teaser_cleanup_body($child);
        }
    }
}

__PACKAGE__->meta->make_immutable;

1;
