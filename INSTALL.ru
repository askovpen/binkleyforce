� ���� ����� ����������� ������� ��������� � ���������
�������-������������ ������� bforce 0.22.8.ugenk1.

� ������ ��������� ������� ��������� �����������:

<SRCDIR> - ����, ���� �� ����������� ������� � ���������
	   �������� bforce 0.22.8.ugenk1 (����� bforce)
�������  - ���� � ����������� tar.gz, ��� tar.bz2


���������� � �������
====================

��� ���������� bforce ��� ����������� ���������� (��� 
gnu/bsd-������ gcc), ��� �� GNU make (make ��� ������,
gmake ��� bsd).

���������� � ������������ �� ����� ������� ����, ��� ��
������ ��� ���������� ����������������� ����������� �����������.


������� ����������
==================

���������� ������� ���������� ���������:

gzip -d bforce-0.22.8.ugenk1.tar.gz
��� 
bzip2 -d bforce-0.22.8.ugenk1.tar.bz2

tar -xvf bforce-0.22.8.ugenk1.tar

��������� � ���������� bforce-0.22.8.ugenk1/source:
cd <SRCDIR>/bforce-0.22.8.ugenk1/source

��� �������� Makefile, ������� �������� �������� � �����
�������, ��������:

./configure --help

� ����������� ���������� ������������ �������.
���� ��� �� ������� ������������ �������, �� ������ ���������:

./configure

## WARNING! ��������!
## ����� ������ bforce ���������� � ���������� syslog �� ���������.
## ���� �� �� ������ ��� ���/����� ��� ��� ����� - ����� �������
## ./configure --disable-syslog

��� ������������� ��������� Makefile ��� ����� ����.
��������� ������� make (��� bsd - gmake):

make

� ������ ������ ��� ���������� ������� make ������ bugreport ��
e.kozhuhovskiy@gmail.com ��� � �������������� ru.unix.ftn

��������, ��������� ����������� configure � ������� autoconf

�����������, ���������� ����������� �������.
��� ��������� bforce ��������:

make install

��� bsd:

gmake install


���������
=========

��� ���������� ������ ��� ����� ��������������� ���������������� �����
bforce. �� ��������� ��� ��������� � /usr/local/fido/etc � ����������
bforce.conf - �������� ���������������� ���� bforce
bforce.passwd - ���� ����������� ������� �� ������
bforce.subst - ���� ��������������� ������ �� nodelist
freq.dirs - ���� ������� ������ ���������� ��� freq-��������
freq.aliases - ���� ������� magic freqests

��� �� ��� ���������� ���������� ���� outman. �� ��������� �� ����� �
/usr/local/fido/bin. outman - ��� ������, ���������� ���� ��� ��������
���������, �������� �������� � ����-������� �� ���� ftn.


�������������
=============

bforce - �������� ���� bforce, ������ ��� �������
������, ��������� ������� � ������� ��-��� mgetty\portslave ��� ������
�������� �������.
���������� bforce --help


bfindex - ������ ��� ���������� ��������� ������ (��������������)
���������. ��������������: bfindex

bfstat - ������ ��� ������ �������� �������. �������������: bfstat

nlookup - ������ ��� ������ ���������� � ��������. �������������:
nlookup <ftn_address>

outman - ��. "���������". ���������� outman --help

� ����� debian ����� man-��������.
TODO: �������� Makefile ��� ��������� man-pages

���������� ������ � mgetty
==========================
��� ����, ��� �� ���� ��� �������� �� �������� ������, ���������� ����������
�����. ���������� �����������. �������� ���������������� ��������� - mgetty.
��� ����, ��� �� ��� ����� �������� �� ftn-����, ���������� ������� �� � ������
-DFIDO. � ������ �������������� ������ ��� ����� ��������� � �������
cat `which mgetty` |strings |grep FIDO |wc -l
���� �� �������� �����, �������� �� ����, �� ��� ������� :)

� login.config �������� ��������� �����������:
/FIDO/  news       fido    /usr/bin/bforce @

��� news - ��� ������������, ��-��� �������� � ��� �������� ftn-����������.

���������� ������ � inetd/xinetd
================================
� ��������� (��� � �������), bforce �� ����� �������������� ��������� ��������
binkd/ifc ������. ��� ����� ��� ��������� ������������ ����������� ��������� -
inetd ��� xinetd.
��� ������� ��� inetd:
binkp stream tcp nowait news /usr/bin/bforce bforce -i binkp
ifc   stream tcp nowait news /usr/bin/bforce bforce -i auto

���������, ��� �� � ��� ���� �����. ������ � /etc/services, ��������:
binkp           24554/tcp                       # binkp fidonet protocol
ifc             60179/tcp                       # fidonet EMSI over TCP

�������������� �������
======================

�������������� ������� ��� bforce ��������� � <SRCDIR>/contrib:
bflan			   - bforce log analyzer
callout.sh		   - ������ ��� �������� �� ��������
outman		 	   - ������ outman
timesync.tcl		   - ������ ��� ������������� ������� � ������ ftn.
init.d/bforce		   - init-������ ��� RedHat
bfha			   - bforce history analyzer (bfha)
bfha/README		   - bfha README
bfha/bfha.pl		   - ����������, bfha
u-srif		 	   - ����������� freq-���������
u-srif/u-srif-index.py     \ � ��������� �������,
u-srif/u-srif-lookup.py     \ �����������, 
u-srif/u-srif.py	     \ ���������� �������� ����,
u-srif/conf		      \ ��� ����������� ��������
u-srif/conf/report.footer      \ ������.
u-srif/conf/report.header       \ ������� �� python.
u-srif/conf/u-srif.aliases	 \ --------------------
u-srif/conf/u-srif.conf	   	  \ -------------------
u-srif/conf/u-srif.dirs	 	   \ ------------------
u-srif/lib			   / ------------------
u-srif/lib/uconfig.py		  / -------------------
u-srif/lib/udbase.py		 / --------------------
u-srif/lib/ufido.py		/ ---------------------
u-srif/lib/unodestat.py        / ----------------------
u-srif/lib/utmpl.py	      / -----------------------
u-srif/lib/uutil.py	     / ------------------------
