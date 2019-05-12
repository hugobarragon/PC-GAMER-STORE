INSTALLATION AND TESTING
---------------------------

To test this package, just copy the "popup"folder got by unzipping the package to your website... say to the root directory itself.

Now just open the following url - http://[your_website_name]/popup/index.html

The page has a click here message and on clicking on the link, a popup window with login form appears.


FUNCTIONAL DETAILS
-------------------

The package contains the following files

1. index.html - main page
2. popup.css - contains the css style required to show the popup.
3. poup.js - Contains the javascript functions that create the popup. The popup is called with a show function as -
TINY.box.show({url:'popuplogin.html',width:300,height:160,openjs:'initPopupLogin',opacity:30})

   a. url (popuplogin.html) contains the login form which is shown in the popup window.
   b. openjs (initPopupLogin) is a function which will get called once the popup is loaded. This can be used to do some useful things
      like bringing the curser to the first form input or pre-populating some hidden field values.
   c. width and height are self explanatory. opacity determines the background darkness made while opening the popup.

   Some other useful parameters that TINY box can accept 
   Parameters include (tag – description (type) – default):

   html - HTML content for window (string) - false
   iframe - URL for embedded iframe (string) - false
   url - path for AJAX call (string) - false
   post - post variable string, used in conjunction with url (string) - false
   image - image path (string) - false
   width - preset width (int) - false
   height - preset height (int) - false
   animate - toggle animation (bool) - true
   close - toggle close button (bool) - true
   openjs - generic function executed on open (string) - null
   farg1 - An optional argument that will get passed to the openjs function passed (string) - ''
   farg2 - An optional second argument that will get passed to the openjs function passed (string) - ''
   html2funct - If this is set as 1, the first argument passed with openjs function call will be the html content of url passed(int) - 0
   autohide - number of seconds to wait until auto-hiding (int) - false
   boxid - ID of box div for style overriding purposes (string) - ''
   maskid - ID of mask div for style overriding purposes (string) - ''
   fixed - toggle fixed position vs static (bool) - true
   opacity - set the opacity of the mask from 0-100 (int) - 70
   mask - toggle mask display (bool) - true
   top - absolute pixels from top (int) - null
   left - absolute pixels from left (int) - null
   topsplit - 1/x where x is the denominator in the split from the top (int) - 2

DISCLAIMER
----------
You can use the contents of this package in full or part for your website freely. You are also free to modify the contents for use. 