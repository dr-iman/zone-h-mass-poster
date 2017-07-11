#!/usr/bin/perl 
# Coded By : DR-IMAN
# Site : Guardiran.org

use URI::URL;
use LWP::UserAgent;
use Term::ANSIColor;
use IO::Socket::INET;
use HTTP::Request;
use HTTP::Request::Common qw(POST);
use HTTP::Request::Common qw(GET);
system(($^O eq 'MSWin32') ? 'cls' : 'clear');
print qq(

 _______  _______  __    _  _______         __   __    
|       ||       ||  |  | ||       |       |  | |  |   
|____   ||   _   ||   |_| ||    ___| ____  |  |_|  |   
 ____|  ||  | |  ||       ||   |___ |____| |       |   
| ______||  |_|  ||  _    ||    ___|       |       |   
| |_____ |       || | |   ||   |___        |   _   |   
|_______||_______||_|  |__||_______|       |__| |__|   
 __   __  _______  _______  _______                    
|  |_|  ||   _   ||       ||       |                   
|       ||  |_|  ||  _____||  _____|                   
|       ||       || |_____ | |_____                    
|       ||       ||_____  ||_____  |                   
| ||_|| ||   _   | _____| | _____| |                   
|_|   |_||__| |__||_______||_______|                   
 _______  _______  _______  _______  _______  ______   
|       ||       ||       ||       ||       ||    _ |  
|    _  ||   _   ||  _____||_     _||    ___||   | ||  
|   |_| ||  | |  || |_____   |   |  |   |___ |   |_||_ 
|    ___||  |_|  ||_____  |  |   |  |    ___||    __  |
|   |    |       | _____| |  |   |  |   |___ |   |  | |
|___|    |_______||_______|  |___|  |_______||___|  |_|

);

print "[START] Targets List :";
my $list=<STDIN>;
chomp($list);
  open (THETARGET, "<$list") || die "[-] Can't open the Targets List !";
@TARGETS = <THETARGET>;
close THETARGET;
$link=$#TARGETS + 1;
foreach $tofuck(@TARGETS){

chomp($tofuck);



$req = HTTP::Request->new(GET=>$tofuck);
$useragent = LWP::UserAgent->new();
$response = $useragent->request($req);
$ar = $response->content;
if ($ar =~ /Hacked|/){
open (TEXT, '>>Defaced.txt');
print TEXT "\n$tofuck   =>  Posted !!\n\n";
close (TEXT);
print colored ("Wait",'white on_red'),"\n";
                                $dmn= $tofuck;
                                $def="dr-iman";
                                $zn="http://zone-h.org/notify/single";
                                $lwp=LWP::UserAgent->new;
                                $res=$lwp  -> post($zn,[
				'defacer'     => $def,
				'domain1'   => $dmn,
				'hackmode' => '15',
				'reason'       => '1',
				'submit'       => 'Send',
                                ]);
				if ($res->content =~ /color="red">(.*)<\/font><\/li>/) {
				print "$dmn submit $1\n";
                                }
                                else
                                {
                                print colored ("[ERROR] Submited During Last Year",'white on_red'),"\n";
                                     }
}
}
