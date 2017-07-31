The application was created under project extweetwordcount
The project structure is:
extweetwordcount
    - finalresults.py
	 - histogram.py 
	 - barchart.ipynb
   	 topologies
	 - tweetwordcount.clj
	src 
		- bolts
			+ wordcount.py
			+ parse.py

		- spouts
			+ tweets.py
	


The application is run using 
sparse run --name=tweetwordcount.clj

this is because there’re other configurations and tweetwordcount.clj is the configuration for 

to run other applications:
python finalresults.py someword
python histogram.py (3,5)
     barchart.ipynb should be run in jupyternotebook with pyplot library 