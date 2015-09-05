requires 'perl', '5.008005';
requires 'DBI';
requires 'DataParsers::ArrayImporters::CSVArrayImporter';
requires 'DataParsers::DBIFormat';
requires 'DataParsers::ExcelFormat';
requires 'DataParsers::ExtendedSimonWardFormat';
requires 'DataParsers::FieldValidatorParser';
requires 'DataParsers::GedcomFormat';
requires 'DataParsers::SerializerFormat';
requires 'Digest::MD4';
requires 'Digest::MD5';
requires 'Digest::Perl::MD4';
requires 'Encode';
requires 'File::Temp';
requires 'Gedcom', '1.15';

requires 'Class::Std', '0.013';
requires 'Class::Std::Storable', '0.0.1';
requires 'Date::Tiny', '1.0.4';


requires 'Gedcom::Comparison', '1.15';
requires 'Gedcom::Event', '1.15';
requires 'Gedcom::Family', '1.15';
requires 'Gedcom::Grammar', '1.15';
requires 'Gedcom::Individual', '1.15';
requires 'Gedcom::Item', '1.15';
requires 'Gedcom::Record', '1.15';
requires 'Jcode';
requires 'List::Util';
requires 'Params::Validate';
requires 'Parse::RecDescent';
requires 'PerlSettingsImporter';
requires 'Scalar::Util';
requires 'TextGenerators::EnglishTextGenerator';
requires 'TextGenerators::FrenchTextGenerator';
requires 'TextGenerators::GermanTextGenerator';
requires 'TextGenerators::HungarianTextGenerator';
requires 'TextGenerators::ItalianTextGenerator';
requires 'TextGenerators::PolishTextGenerator';
requires 'TextGenerators::RomanianTextGenerator';
requires 'TextGenerators::RussianTextGenerator';
requires 'Time::Local';
requires 'Unicode::Map';
requires 'subs::Funcs';
requires 'Switch', '2.17';

on test => sub {
    requires 'Test::More';
};
