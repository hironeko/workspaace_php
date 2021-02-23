CREATE DATABASE IF NOT EXISTS `laravel` COLLATE 'utf8_general_ci';
GRANT ALL ON `laravel`.* TO 'default'@'%';

/*
test db
*/
CREATE DATABASE IF NOT EXISTS `laravel_test` COLLATE 'utf8_general_ci';
GRANT ALL ON `laravel_test`.* TO 'default'@'%';