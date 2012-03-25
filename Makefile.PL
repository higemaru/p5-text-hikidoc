use inc::Module::Install;
name 'Text-HikiDoc';
author 'KAWABATA, Kazumichi (Higemaru) <kawabata@cpan.org>';
perl_version '5.006';
all_from 'lib/Text/HikiDoc.pm';

build_requires 'Test::Base';

requires 'File::Basename';
requires 'perl' => '5.6.0';

use_test_base;

auto_include;
WriteAll;
