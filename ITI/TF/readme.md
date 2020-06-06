
## Overview

This folder holds the working copy of the ITI Technical Framework Revision 16.0 – Final Text converted to HTML pages generated from the initial word files.

index.html in this folder itemizes the content much like the table-of-content supports Volume today

## Conversion

The conversion is a multi step process consosting of the following steps:
* convert the orinal word files by pandoc using command: pandoc -s --extract-media=./ -o IHE_ITI_TF_Rev16-0_Vol1_FT.html IHE_ITI_TF_Rev16-0_Vol1_FT.docx
* run the java processing code, which:
  * repairs XHTML errors to be able to parse with standard XML DOM parser
  * parses to DOM and repiars messy HTML structures produced by pandoc conversion
  * performs some reformatting
  * produces the table of content of the volumes
* run the indexer, which
  * replaces refereneces by text (e.g. ITI TF-2a 2.3.4.5) to HTML links across the volumes

## Issues solved:
* added code to repair xhtml error
* split v1, v2a, v2b and v3 to level h1
* split volume 2a and 2b to level h2
* added references to h2 sections to v2a and v2b chapter
* added index page with TOC for v1, v2a, v2b and v3
* removed list tags from header tags
* removed empty list tags
* added reference to style sheet
* added minimal styling
* removed \<strong> and \<br> tags in header which looked weird
* removed all \<strong/> tags causing a lot of problems
* add consistent chapter and section numbering
* added full TOC generation up to level h6
* fixed problem with uploading images to github
* added HTML links for references with pattern "ITI TF-N [abx]:".
* added HTML links to appendix sections
* added HTML links to appendix subsections
* added HTML links to level 7 and level 8 headers, which have no <hx/> tag (since this is not defined in HTML).

## Open issues:

### Java processing code
- volumes use inner volume reference with pattern "Section 3.52.5.1". Need to be converted to HTML links. See example in 3.53 Document Metadata Notify.
- link footnotes in Volume 1 to the Volume 1 Glossary  
- build Table and image TOC
- Not all tables use \<thead/> or <th/> header elements like in v1_ch-1.html, for example the tables in v1_ch-2.html have no header line.
- list numbering fails, if there a paragraph text in lists (see v1 ch 15, 15.3 XDR Process Flow for example)

### Word issues:
To be repaired in word or manually after conversion:
- Typo in row 1 of table 14.3-1 of volume 1: It should read ITI TF-2b: 3.30.4.1, and not ITI TF-2b: 3.304.1. No HTML Link is generated due to the typo.
- .emf and .wmf images are not shown, see v1_ch-5.html for example.
- Word Drawings are not converted to html \<img/> tags by pandoc. See for example chapter 30 (XDW) in Vol 1: While the embedded image Figure 30.4.1.1-1 is converted to an \<img/> tag, the word drawing Figure 30.4.1.2-1 is not.  
- ATNA tables are not aligned. See v2a_ITI-2.html for example.
- XML listings come as \<p/> elements line by line (v3_ch-1_section-2.html) and look weird.

### Styling
- Not defined yet

## Future
- Not defined yet
