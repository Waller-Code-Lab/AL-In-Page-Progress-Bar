AL In Page Progress Bar

This Repositroy is a basic use of Control Add-Ins in AL code for Dynamics 365 Business central including some Javascript to implement an in page progress bar.
![image](https://github.com/Waller-Code-Lab/AL-In-Page-Progress-Bar/assets/169139188/8e27a619-1114-4eac-807a-c288a5673f23)
The use of Javascript I've used here is to include a animation that when validating the Progress field on this page, the progress bar fills up with the new value. This Feature also includes using a small amount of CSS to style the progress bar.

This is a video here from Erik Hougaard who has come up with this I have added tweaks into the code in my repository - https://www.youtube.com/watch?v=yens8izw09g

When testing this I found that the progress bar adjusted to the new value of the new page normally when coming out of the page and going back in. However... when clicking the button on the page to go to the next page here it didn't as I've badly highlighted here...
![image](https://github.com/Waller-Code-Lab/AL-In-Page-Progress-Bar/assets/169139188/32227305-9bd7-4f64-8152-b9a3387f9e23)
To overcome this I have Added the in the OnAfterGetCurrRecord trigger to set the UI which fixed this issue. However... I realised that because I was setting this when the Control Add-In was ready as well which was neccesary that this would fire twice setting the progress bar twice only when opening a new page. To overcome this I added a new boolean global variable to the page and used this to tell if the Page/Control Add-In had loaded or not and only firing the code in The OnAfterGetCurrRecord trigger if the Control Add in had already loaded meaning this wouldn't fire twice.

Any Issues with this Contact me!
