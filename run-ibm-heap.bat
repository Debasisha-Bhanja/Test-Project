# Aug 2, 2012 This bat file written by James Stroud - stroudj@us.ibm.com to let you run heap analyzer jar file on Windows based PCs and referencing the correct version of Java on your System
# NOTE: The parameters used below are for PCs or systems WITH AT LEAST  2.5 GB of memory (RAM) on it, preferably 3G or higher. 
# If you have only 2 GB of memory you need to change the Xmx2048M to something like Xmx1048M
# save this run-ibm-heap.bat file to the folder where you downloaded and stored the heap analyzer jar file on your Windows PC
# The first uncommented line provides a title bar on the MS DOS command window (cmd.exe)
# The next line on Windows 7 64 bit OS, indicates the default location where Sun's JRE 1.6.x 64 bit gets installed, so I set the path to include it
# The following two lines after the path setting do two items 1) tells the bat file to go to the D: drive and then change to the directory D:\downloads\ibm-heap-analyzer which is where this script
# expects to run the find and run the heap analyzer jar file.  
# Change the last two lines  of this file according to where you are storing the Java Heap Analyzer.  If you install the heap analyzer on the c: drive just remove the line "D:" line below
# and change the next line to reference the directory on the C: drive where you downloaded and intend to run the heap analyzer jar.
# As new versions of the heap analyzer program is released and the filename changes from ha435.jar to something else replace "ha435.jar" in the
# line above with the most recent and correct name of the heap analyzer jar file
# to run this bat file either double click on it or open the command prompt (cmd.exe) and type "run-ibm-heap.bat" from the command prompt while in the same directory where you stored this .bat file


title ibm-heap-analyzer
path=%PATH%;%C:\"Program Files"\Java\jre6\bin
D:
cd D:\downloads\ibm-heap-analyzer
java.exe -Xms1048M -Xmx2048M -jar ha435.jar
