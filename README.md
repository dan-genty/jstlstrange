Strange behavior of JSTL's parseNumber
=========

This repository contains the sources which demonstrate a case when we want to parse a number, e.g. 1500 with JSTL's **parseNumber** tag.
In Windows 10, you'll see the correct result, but you'll be surprised with an extra "0" if you open the demo website in Windows 7 or MacOS.
This might be a bug of JSTL's parseNumber tag.