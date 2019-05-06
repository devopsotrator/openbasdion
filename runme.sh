!#/bin/ksh


# выбивает сценарий на первой ошибке
set -e

doas pkg_add \
	jdk-11.0.2.9.3p0v0 \
	elasticsearch \
	kibana \
	logstash \
