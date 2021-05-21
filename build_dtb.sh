#/bin/sh

gcc -I . -E -nostdinc -undef -D__DTS__ -x assembler-with-cpp -o hgvc4-overlay.dts.tmp hgvc4-overlay.dts
dtc -I dts -O dtb -o hgvc4.dtbo -@ hgvc4-overlay.dts.tmp
rm -f hgvc4-overlay.dts.tmp
