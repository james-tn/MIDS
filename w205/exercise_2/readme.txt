{\rtf1\ansi\ansicpg1252\cocoartf1504\cocoasubrtf830
{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;}
{\*\expandedcolortbl;;\csgray\c0;\csgray\c100000;}
\paperw11900\paperh16840\margl1440\margr1440\vieww28600\viewh15520\viewkind0
\deftab720
\pard\pardeftab720\li360\ri-340\partightenfactor0

\f0\fs22 \cf0 The application was created under project extweetwordcount\
The project structure is:\
\pard\pardeftab720\li360\ri-340\partightenfactor0
\cf0 extweetwordcount\
    - \cf2 \cb3 \CocoaLigature0 finalresults.py\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf2 	 - histogram.py \
	 - barchart.ipynb\
   	 topologies\
	 - tweetwordcount.clj\cf0 \cb1 \CocoaLigature1 \
\pard\pardeftab720\li360\ri-340\partightenfactor0
\cf0 	src \
		- bolts\
			+ wordcount.py\
			+ parse.py\
\
		- spouts\
			+ tweets.py\
	\
\
\
The application is run using \
\pard\pardeftab720\fi360\ri-340\partightenfactor0
\cf0 sparse run --name=tweetwordcount.clj\
\pard\pardeftab720\li360\ri-340\partightenfactor0
\cf0 \
this is because there\'92re other configurations and tweetwordcount.clj is the configuration for \
\
to run other applications:\
python finalresults.py someword\
python histogram.py (3,5)\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf2 \cb3 \CocoaLigature0      barchart.ipynb should be run in jupyternotebook with pyplot library }