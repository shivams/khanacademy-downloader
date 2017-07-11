# khanacademy-downloader
This is a quick bash script for downloading Khan Academy videos for a particular topic. Use it at your own risk, as it was created in a rush in a few minutes. 

This script should work on all modern Linux Desktop distributions (as of July 2015).

### Prerequisites:
* curl
* html-xml-utils
* youtube-dl

To install the prerequisites on a Debian(Ubuntu) based system, just do this: 

    sudo apt-get install html-xml-utils curl python-pip
    sudo pip install youtube-dl

### Running the script
Run the script by providing it an argument for the URL of the KhanAcademy course/topic you wish to download the videos for. 
For exmample, if you wish to download "1900 - present: The recent past" course whose url is `https://www.khanacademy.org/humanities/history/euro-hist`, then just do this: 

    ./khanacademyDownloader.sh https://www.khanacademy.org/humanities/history/euro-hist

The script will then scrape the whole page and find the links for the pages which contains some videos and then download the videos from those pages using youtube-dl. 
