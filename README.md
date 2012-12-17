### CatchAll virtualhost for apache

A small script that will add a virtual host for apache which will setup automatic subdomains for a specified directory
Just for personal use but someone might get some use out of this... Don't expect any support if this messes up your virtual hosts

## Usage
	cd /dir/to/where/I/want/it
	git clone git://github.com/Datanizze/catchall.git
	cd catchall
	./doit.sh /path/to/my/public_html

## Results
If your public\_html path is /home/user/public\_html/ and you have a domain example.com.

If you then create a directory _test_ in public\_html (/home/user/public\_html/test) then you will be able to access that directory directly through http://test.example.com


If you want a standard www.example.com then just create a folder called _www_.

If you want access to just example.com then create a folder named example (where example is the same name as your domain).

If you want to link example.com and www.example.com create a symlink instead `ln -s /home/user/public_html/www /home/user/public_html/example`.

## Notes
Above Paths are just examples, use your brain...

This needs to be run as root, of course.

Tested on debian squeeze & wheezy.

## License
Free for all and no responsibity on me!
