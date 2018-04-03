# =============================================================================
# cruise
#
# CentOS7, Apache 2.4.6, PHP 7.2, php72-xdebug, phpunit-7.0.3
# 
# =============================================================================

FROM centos:7

MAINTAINER cruise

# -----------------------------------------------------------------------------
# EPEL  Repositories
# -----------------------------------------------------------------------------
RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
	&& rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm

# -----------------------------------------------------------------------------
# Import Remi Repository for centOS7
# -----------------------------------------------------------------------------
# RUN	yum install -y  http://rpms.remirepo.net/enterprise/remi-release-7.rpm
# RUN	yum-config-manager –-enable remi-php72
# 用 remi則php 會裝在 /opt/remi/
# /etc/opt/remi/

# -----------------------------------------------------------------------------
# Install software
# -----------------------------------------------------------------------------
RUN 	yum -y update \
	&& yum install -y \
	wget \
	httpd-2.4.6 \
	php72w \
	php72w-mbstring \
	php72w-pdo \
	php72w-gd \
	php72w-mysqlnd \
	php72w-cli \
	php72w-pecl-xdebug \
	nano \
	&& rm -rf /var/cache/yum/* \
	&& yum clean all
 

 # -----------------------------------------------------------------------------
# Install phpunit
# -----------------------------------------------------------------------------
 RUN	wget https://phar.phpunit.de/phpunit-7.0.3.phar \
	&& chmod +x phpunit-7.0.3.phar \
	&& mv phpunit-7.0.3.phar /usr/share/php/phpunit-7.0.3.phar
# -----------------------------------------------------------------------------
# Xdebug setting
# -----------------------------------------------------------------------------
# set remote_host = 10.254.254  then sudo ifconfig en0 alias 10.254.254.254 255.255.255.0 in host machine
# alias host ip to 10.254.254.254 so xdebug can find it

RUN { \
		echo ''; \
		echo $'xdebug.idekey = PHPSTORM'; \
		echo $'xdebug.remote_enable = 1'; \
		echo $'xdebug.remote_port = 9001'; \
		echo $'xdebug.remote_host = 10.254.254.254'; \
		echo $'xdebug.max_nesting_level = 512'; \
		echo $'xdebug.remote_log=/tmp/xdebug.log'; \
#		echo $'xdebug.default_enable = 0'; \
#		echo $'xdebug.remote_autostart = 0'; \
#		echo $'xdebug.remote_connect_back = 0'; \		
#		echo $'xdebug.file_link_format = phpstorm://open?%f:%l'; \	
	} >> /etc/php.d/xdebug.ini


EXPOSE 80 443 

ADD	index.php	/var/www/html

CMD	["/usr/sbin/httpd", "-DFOREGROUND"]


# -----------------------------------------------------------------------------
# http setting and file Locations
# -----------------------------------------------------------------------------
# user apache
# group apacheyum
# ServerRoot “/etc/httpd”
# Directory /var/www/html
# /etc/php.ini
# /etc/httpd/conf/httpd.conf
# /etc/httpd/conf.d/php.conf	//httpd php setting
# /etc/httpd/conf.modules.d/10-php.conf	//load php5_modules libphp5.so

# epel site https://fedoraproject.org/wiki/EPEL/FAQ
