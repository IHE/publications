## Overview

This folder holds the working copy of the ITI Technical Framework Revision 16.0 – Final Text converted to HTML pages generated from the initial word files.

index.html in this folder itemizes the content much like the table-of-content supports Volume today

## Conversion

The conversion is a multi step process consisting of the following steps:
* convert the original word files with online tool https://www.aconvert.com/document/pages-to-doc/
* run the java processing code, which:
  * repairs XHTML errors to be able to parse with standard XML DOM parser
  * parses to DOM and repairs messy HTML structures produced by pandoc conversion
  * performs some reformatting
  * produces the table of content of the volumes
* run the indexer, which
  * replaces references by text (e.g. ITI TF-2a 2.3.4.5) to HTML links across the volumes

## Issues solved:
* removed empty \<span/\> elements
* removed empty \<a/\> elements
* split files for volume 1
* split files for volume 2a
* split files for volume 2b
* split files for volume 2x
* split files for volume 3
* added generated images
* create index file
* create toc file
* fixed conversion of text references to links
* the HTML converted from word has strange sequences of SPAN elements with equal styling.
	Added processing code to merge these sequences to a single SPAN element.
* cleared styling of table, TD and IMG elements
* removed unnecessary DIV elements      


## Open issues:
* after merging SPAN: Simplify all P elements which have only 1 SPAN element without style setting.
* remove inline style of A HREF tags
* remove style text-align:center from div, which contain a table. If it only contains the table, replace the DIV with the table   


* correct the flow styling of the images. Some have flow left, some flow right and some do not have a flow setting at all.
	TODO remove all styling of images.

* the HTML converted from word uses inline styling extensively. These must be partly removed (Font Family, etc.) to be able
	to style the HTML with a global CSS file. There are many unnecessary style settings like

   \<span style="font-family:'Times New Roman'"\>
   \<li style="margin-top:6pt; margin-left:32pt; padding-left:4pt; font-family:'Times New Roman'; font-size:12pt"\>
   \<p style="margin-top:6pt; margin-bottom:0pt; font-size:12pt"\>

   ** remove font-family:serif from style of LI elements
   ** remove -aw-font-family:'Symbol' and -aw-font-weight:normal from LI elements
   ** Replace with CLASS definitions ??  

* some subsection in appendix are P elements and currently do not show up in the toc (see vol 1 appendix M):
* level 7 and 8 subsections do not show up in the toc

	\<p xmlns="" style="margin-top:12pt; margin-bottom:3pt; page-break-after:avoid; font-size:12pt"\>
      \<span style="font-family:Arial; font-weight:bold"\>3.40.4.1.2.2.1\</span\>
      \<span style="font-family:Arial; font-weight:bold"\>Patient Identifier Attribute\</span\>
	\</p\>

	or in 2b ITI-40:

	\<p xmlns=""\>
      \<span style="font-family:Arial; font-weight:bold"\>3.40.4.1.2.3.1 ATNA encoding of PurposeOfUse\</span\>
    \</p\>


### Java processing code
Initial conversion is done with online conversion tool:
https://www.aconvert.com/document/pages-to-doc/

The processing is done afterwards and contains of:
* some cleanup to simplify the generated HTML
* splitting
* indexing to replace text references with HTML links

### Word issues:
* Volume 2 b, ITI-40 has and bold/underline text. Is that intended?  
* Volume 1, Section 4, EUA has bold/italic text. Is that intended?
* the HTML converted from word contains all images but in low resolution. These must be replace by higher resolution images.
* some word drawings are not converted properly (see Figure 27.3.2.1-1)

### Styling
- Not defined yet

## Future
- Not defined yet
