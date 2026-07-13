<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.5-comment/StructureDefinition-ihe-full-text-search-match-snippet.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.5-comment/StructureDefinition-ihe-full-text-search-match-snippet.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.5-comment/StructureDefinition-ihe-full-text-search-match-snippet.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.5-comment/StructureDefinition-ihe-full-text-search-match-snippet.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.5-comment/StructureDefinition-ihe-full-text-search-match-snippet.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.5-comment/StructureDefinition-ihe-full-text-search-match-snippet.html');
else 
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.5-comment/StructureDefinition-ihe-full-text-search-match-snippet.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
