# fhir-ig-history-template

History page for FHIR IG templates

for further information, see <http://wiki.hl7.org/index.php?title=Process_for_Publishing_a_FHIR_IG>

## how to use the template

This is the basic template, and is incomplete. You must provide three files that fill 
out the rest of the template:

* header.template: the content in here is added to the html page above </head>. This is for you to include your own css files etc
* preamble.template: the content in here is added to the page after <body>. This is where you set up the header 
* postamble.template: the content in here is added to the page after the history elements, but before the all the javascript 

Put these three files in your web site, in /templates from the rootFolder (the folder
that contains publish.ini). Do not change history.template itself (if you think you 
need to, talk to the FHIR Product director)


