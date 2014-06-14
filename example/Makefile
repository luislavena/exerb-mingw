
#==============================================================================#
# $Id: Makefile,v 1.5 2006/07/06 01:35:22 yuya Exp $
#==============================================================================#

all: exception msgbox vruby runtime rubytk cat_n

#==============================================================================#

MKEXY  = mkexy
EXERB  = exerb -v
REMOVE = rm -f
ECHO   = echo

#==============================================================================#

cat_n: cat_n.rb old_cat_n.exy Makefile
	$(ECHO) ------------------------------------------------
	-$(MKEXY) --old old_cat_n.exy cat_n.rb
	-$(EXERB) cat_n.exy

exception: exception.rb old_exception.exy Makefile
	$(ECHO) ------------------------------------------------
	-$(MKEXY) --old old_exception.exy exception.rb
	-$(EXERB) exception.exy

msgbox: msgbox.rb old_msgbox.exy Makefile
	$(ECHO) ------------------------------------------------
	-$(MKEXY) --old old_msgbox.exy msgbox.rb
	-$(EXERB) msgbox.exy

vruby: vruby.rb old_vruby.exy Makefile
	$(ECHO) ------------------------------------------------
	-$(MKEXY) --old old_vruby.exy vruby.rb
	-$(EXERB) vruby.exy

runtime: runtime.rb old_runtime.exy Makefile
	$(ECHO) ------------------------------------------------
	-$(MKEXY) --old old_runtime.exy runtime.rb
	-$(EXERB) runtime.exy

rubytk: rubytk.rb old_rubytk.exy Makefile
	$(ECHO) ------------------------------------------------
	-$(MKEXY) --old old_rubytk.exy rubytk.rb
	-$(EXERB) rubytk.exy

#==============================================================================#

clean:
	-$(REMOVE) cat_n.exe exception.exe msgbox.exe vruby.exe runtime.exe rubytk.exe
	-$(REMOVE) cat_n.exy exception.exy msgbox.exy vruby.exy runtime.exy rubytk.exy

#==============================================================================#
#==============================================================================#
