<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.5-comment/StructureDefinition-IHE.MHD.FindDocumentReferencesResponseMessageFullTextSearch.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.5-comment/StructureDefinition-IHE.MHD.FindDocumentReferencesResponseMessageFullTextSearch.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.5-comment/StructureDefinition-IHE.MHD.FindDocumentReferencesResponseMessageFullTextSearch.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.5-comment/StructureDefinition-IHE.MHD.FindDocumentReferencesResponseMessageFullTextSearch.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.5-comment/StructureDefinition-IHE.MHD.FindDocumentReferencesResponseMessageFullTextSearch.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.5-comment/StructureDefinition-IHE.MHD.FindDocumentReferencesResponseMessageFullTextSearch.html');
else 
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.5-comment/StructureDefinition-IHE.MHD.FindDocumentReferencesResponseMessageFullTextSearch.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
