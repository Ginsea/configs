#!/Users/astrodoo/anaconda2/bin/python
"""
    chkpng starti endi rsize 'outid' 
"""
from pyzeus import play_zeus as pz
import sys

rsize = 0.
outid = 'chk'

if (len(sys.argv) > 2):
    starti = int(sys.argv[1])
    endi   = int(sys.argv[2])

    if (len(sys.argv) > 3):
        rsize = float(sys.argv[3])

        if (len(sys.argv) == 5):
            outid = sys.argv[4]
else:
    sys.exit("should input at least 2 arguments!! (start/end/rsize/outid)")

if (rsize == 0.):
    pz.play_zeus3(vars=['d','temp','v1'],start=starti,end=endi,outid=outid)
else:
    pz.play_zeus3(vars=['d','temp','v1'],start=starti,end=endi,rsize=rsize,outid=outid)
