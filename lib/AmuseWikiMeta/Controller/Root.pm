use utf8;
package AmuseWikiMeta::Controller::Root;
use Moose;

use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller' }

use AmuseWikiFarm::Log::Contextual;
use Path::Tiny;
use IO::File;
use AmuseWikiFarm::Utils::Paths;
use constant AMW_META_ROOT => $ENV{AMW_META_ROOT};

#
# Sets the actions in this controller to be registered with no prefix
# so they function identically to actions created in MyApp.pm
#
__PACKAGE__->config(namespace => '');

sub root :Chained('/') :PathPart('') :CaptureArgs(0) {
    my ($self, $c) = @_;
    $c->stash(amw_meta_root => AMW_META_ROOT);
}

sub pages :Chained('root') :PathPart('') :Args {
    my ($self, $c, $page) = @_;
    $page ||= 'index.html';
    log_debug { "Asked $page" };
    if (AMW_META_ROOT and $page =~ m/\A([a-z][a-z\.]+?)(\.(html|js|css|ico))?\z/) {
        my $base = $1;
        my $ext = $3 || 'html';
        my $mime = AmuseWikiFarm::Utils::Paths->served_mime_types->{$ext};
        my $file = path(AMW_META_ROOT, $base . '.' . $ext);
        my $bare = path(AMW_META_ROOT, $base . '.bare.' . $ext);
        my $layout = path(AMW_META_ROOT, 'layout.tt');
        if ($ext eq 'html' and $bare->exists and $layout->exists) {
            $c->stash(
                      html_source => $bare,
                      html_layout => $layout,
                     );
            $c->detach($c->view('HTML'));
        }
        elsif (-f $file) {
            log_debug { "Found $file" };
            $c->response->content_type($mime);
            my $fh = IO::File->new("$file", 'r');
            Plack::Util::set_io_path($fh, "$file");
            $c->response->headers->content_length(-s $file);
            $c->response->headers->last_modified((stat($file))[9]);
            $c->response->body($fh);
            return;
        }
        else {
            log_debug { "$file Not found" };
        }
    }
    $c->response->content_type('text/plain');
    $c->response->body('Not found');
    $c->response->status(404);
}
                

sub end : ActionClass('RenderView') {
    my ($self, $c) = @_;
}

__PACKAGE__->meta->make_immutable;

1;
