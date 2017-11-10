PREFIX = arm-none-eabi-
GCC = $(PREFIX)gcc
CXX = $(PREFIX)g++
LD = $(PREFIX)ld

GCCFLAGS = -I. -I../../libtommath-0.39 -g -O0 -fpermissive -Wno-narrowing -fno-exceptions -fno-strict-aliasing -DHAVE_CONFIG_H -DIN_GIAC -DTIMEOUT -DNO_PHYSICAL_CONSTANTS -DNO_STDEXCEPT -DSTATIC_BUILTIN_LEXER_FUNCTIONS -DGIAC_BINARY_ARCHIVE -DNO_UNARY_FUNCTION_COMPOSE -DTIMEOUT -DNUMWORKS
GCCFLAGS += -fno-threadsafe-statics -mthumb -march=armv7e-m -mfloat-abi=hard -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -fdata-sections -ffunction-sections

GENZEHN = genzehn

EXE = luagiac.luax.tns

OBJS = sym2poly.o gausspol.o threaded.o maple.o ti89.o mathml.o moyal.o misc.o permu.o desolve.o input_parser.o symbolic.o index.o modpoly.o modfactor.o ezgcd.o derive.o solve.o intg.o intgab.o risch.o lin.o series.o subst.o vecteur.o sparse.o csturm.o tex.o global.o ifactor.o alg_ext.o gauss.o isom.o help.o plot.o plot3d.o rpn.o prog.o pari.o cocoa.o unary.o usual.o identificateur.o gen.o input_lexer.o tinymt32.o first.o quater.o 
DISTDIR = .
vpath %.tns $(DISTDIR)

all: libgiac.a

.cc.o:
	$(CXX) $(GCCFLAGS) -c $<

luagiac.o: luagiac.c
	$(GCC) -Os -Wall -W -marm -c $<

missing.o: missing.c
	$(GCC) -Os -Wall -W -marm -c $<

luagiac.luax.elf: $(OBJS)  luagiac.o luabridge.o 
	$(LD) $^ -o $(DISTDIR)/$@ $(LDFLAGS)

luagiac.luax.tns.zehn: luagiac.luax.elf
	$(GENZEHN) --compress --input $(DISTDIR)/$^ --output $(DISTDIR)/$@ --name "luagiac"

luagiac.luax.tns: luagiac.luax.tns.zehn
	make-prg $(DISTDIR)/$^ $(DISTDIR)/$@
	genzehn --info --input luagiac.luax.tns

clean:
	rm -f *.o luagiac.luax.* 

khicas.tns: khicas.lua
	/home/parisse/Ndless/ndless-sdk/tools/luna/luna khicas.lua khicas.tns

giac.tns:	$(OBJS) giacnspire.o #missing.o
	nspire-ld -o giac.elf giacnspire.o $(OBJS) $(LDFLAGS) 
	$(GENZEHN) --compress --input giac.elf --output giac.tns.zehn --name "giac"
	make-prg giac.tns.zehn giac.tns
	genzehn --info --input giac.tns

libgiac.a:   $(OBJS) 
	$(PREFIX)ar rcs libgiac.a $(OBJS)
	$(PREFIX)ranlib libgiac.a

khicas.zip: luagiac.luax.tns khicas.tns 
	zip khicas.zip luagiac.luax.tns khicas.tns khicas.lua README.lua COPYING WARNING
