#!"c:\Users\TOSH\Documents\job\perl\strawberry-perl-5.20.0.1-64bit-portable\perl\bin\perl.exe"
#!"c:\Dwimperl\perl\bin\perl.exe"

use strict;
use warnings;

use CGI::Emulate::PSGI;
use CGI::Compile;
use Plack::Builder;
 
my $cgi_script = "ftree.cgi";
my $sub = CGI::Compile->compile($cgi_script);
my $app = CGI::Emulate::PSGI->handler($sub);

my $cgi_person = "person_page.cgi";
my $sub_person = CGI::Compile->compile($cgi_person);
my $app2 = CGI::Emulate::PSGI->handler($sub_person);
 
  builder {
      enable "Plack::Middleware::Static",
          path => qr{[gif|png|jpg|swf|ico|mov|mp3|pdf|js|css]$}, root => './';
	  mount "/person_page" => $app2;
	  mount "/ftree" => $app;
	  mount "/" => builder { $app };
  }; 
