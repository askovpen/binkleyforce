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

��� ������������� ��������� Makefile ��� ����� ����.
��������� ������� make (��� bsd - gmake):

make

� ������ ������ ��� ���������� ������� make ������ bugreport ��
e.kozhuhovskiy@gmail.com

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


�������������� �������
======================

�������������� ������� ��� bforce ��������� � <SRCDIR>/contrib:
bflan			   - bforce log analyzer
callout.sh		   - ������ ��� �������� �� ��������
outman		 	   - ������ outman
timesync.tcl		   - ������ ��� ������������� �������
init.d/bforce		   - init-������ ��� RedHat
init.d/bforce.debian	   - init-������ ��� non-RedHat
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
