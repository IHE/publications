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
* replaced DIV with table content, if the DIV only contains the table
* replaced P with image content, if the P only contains the IMG
* removed all inline styling of images
* simplified inline style of TD and TABLE elements       


## Open issues:
* rename TD to TH elements if their parent are THEAD to allow global styling
* iterate all figure and table captions and add a class for them, to be styled in CSS file
* Simplify all P elements which have only 1 SPAN element without style setting.
* remove inline style of A HREF tags
* some image captions are put in a P element with the image. Todo: insert the image before the P element.

	<p xmlns="" style="font-size:11pt">
      <img src="media/a7222-00r44.042.png" width="624" height="374" alt="">
      <span style="font-weight:bold">Figure 10.7.1-1: Example Security Domain Relationships</span>
    </p>    

* level 7 and 8 subsections do not show up in the toc

	\<p xmlns="" style="margin-top:12pt; margin-bottom:3pt; page-break-after:avoid; font-size:12pt"\>
      \<span style="font-family:Arial; font-weight:bold"\>3.40.4.1.2.2.1\</span\>
      \<span style="font-family:Arial; font-weight:bold"\>Patient Identifier Attribute\</span\>
	\</p\>

(or in 2b ITI-40):

	\<p xmlns=""\>
      \<span style="font-family:Arial; font-weight:bold"\>3.40.4.1.2.3.1 ATNA encoding of PurposeOfUse\</span\>
    \</p\>


### Java processing code
Initial conversion is done with online conversion tool:
https://www.aconvert.com/document/pages-to-doc/

The processing is done afterwards and contains of:
* cleanup to simplify the generated HTML
* splitting to sections
* indexing to replace text references with HTML links

### Word issues:
* Volume 2 b, ITI-40 has and bold/underline text.
* Volume 1, Section 4, EUA has bold/italic text.
* the HTML converted from word contains all images but in low resolution. These must be replaced by higher resolution images.
* some word drawings are not converted properly (see Figure 27.3.2.1-1)

### Styling
- Not defined yet

## Future
- Not defined yet
