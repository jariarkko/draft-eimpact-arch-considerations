
main:	draft-various-eimpact-arch-considerations.txt

LIBDIR := lib
include $(LIBDIR)/main.mk

$(LIBDIR)/main.mk:
ifneq (,$(shell grep "path *= *$(LIBDIR)" .gitmodules 2>/dev/null))
	git submodule sync
	git submodule update --init
else
ifneq (,$(wildcard $(ID_TEMPLATE_HOME)))
	ln -s "$(ID_TEMPLATE_HOME)" $(LIBDIR)
else
	git clone -q --depth 10 -b main \
	    https://github.com/martinthomson/i-d-template $(LIBDIR)
endif
endif

draft-eimpact-arch-considerations.txt:	draft-various-eimpact-arch-considerations.txt
	cp draft-various-eimpact-arch-considerations.txt draft-eimpact-arch-considerations.txt

drafts:	draft-various-eimpact-arch-considerations.txt \
	draft-eimpact-arch-considerations.txt

copy:	draft-various-eimpact-arch-considerations.txt \
	draft-eimpact-arch-considerations.txt
	ssh root@arkko.com mkdir -p /var/www/www.arkko.com/html/ietf/eimpact/arch
	scp	draft-various-eimpact-arch-considerations.txt \
		draft-eimpact-arch-considerations.txt \
		root@arkko.com:/var/www/www.arkko.com/html/ietf/eimpact/arch
