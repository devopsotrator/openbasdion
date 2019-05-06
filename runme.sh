!#/bin/ksh

# выбивает сценарий на первой ошибке
set -e

local HOSTNAME
HOSTNAME="hostname.kek.org"
hostname $HOSTNAME
echo $HOSTNAME > /etc/myname

local DOMAIN
DOMAIN="kek.org"
domainname $DOMAIN
echo $DOMAIN > /etc/defaultdomain

# man doas
# man doas.conf
cp "/etc/examples/doas.conf" "/etc/doas.conf"

pkg_add \
	git \
	jdk-11.0.2.9.3p0v0 \
	scala \
	elasticsearch \
	kibana \
	logstash \

rcctl enable \
	httpd \
	unbound \
	nsd \
	elasticsearch \
	kibana \
	logstash

rcctl restart \
	httpd \
	unbound \
	nsd \
	elasticsearch \
	kibana \
	logstash
