FROM azul/zulu-openjdk:8

RUN apt-get update -qq \
	&& apt-get install -qqy \
	wget \
	--no-install-recommends

VOLUME /data/10second.build/checkout/
WORKDIR /data/10second.build/checkout/

ENTRYPOINT ["./jcompilo.sh"]

