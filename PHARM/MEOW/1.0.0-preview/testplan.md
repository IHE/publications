<div markdown="1" class="stu-note">

This Test Plan page is a prototype. We expect the maturity of the content will improve over time.  For now, we summarize high level testing scope and available tools. Comments are welcome.
</div>

## Introduction

MHD is an API between four actors.  The transactions between actors specify semantics of the data exchanged.  The MHD test plan focuses on these semantics and on the expected actions on the server-side actors (Document Recipient and Document Responder).

The overall scope of MHD testing is affected by the infrastructure that MHD is connected to. For example, where the Document Responder and Document Recipient are grouped with XDS or MHDS infrastructure, more tests apply.

MHD does not mandate of the functionality to be provided by the data communicated via MHD transations. How MHD actors use the data communicated via these transaction is out-of-scope for MHD testing, but may apply to other related Implementation Guides or IHE Profiles.

## High-level Test Scope
