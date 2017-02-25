/*
 * Append this to the end of your application/config.php
 * @see http://stackoverflow.com/questions/3700626/namespace-in-php-codeigniter-framework#21858556
 */
 
spl_autoload_extensions('.php'); // Only Autoload PHP Files

spl_autoload_register(function($classname) {

    if (strpos($classname, '\\') !== false) {
        // Namespaced Classes
        $classfile = (str_replace('\\', '/', $classname));

        if ($classname[0] !== '/') {
            $classfile = APPPATH . 'libraries/' . $classfile . '.php';
        }
        require($classfile);
    } else if (strpos($classname, 'interface') !== false) {
        // Interfaces
        strtolower($classname);
        require('application/interfaces/' . $classname . '.php');
    }
});