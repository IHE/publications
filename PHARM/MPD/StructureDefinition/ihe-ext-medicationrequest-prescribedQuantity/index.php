<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/PHARM/MPD/1.0.0-comment-2/StructureDefinition-ihe-ext-medicationrequest-prescribedQuantity.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/PHARM/MPD/1.0.0-comment-2/StructureDefinition-ihe-ext-medicationrequest-prescribedQuantity.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/PHARM/MPD/1.0.0-comment-2/StructureDefinition-ihe-ext-medicationrequest-prescribedQuantity.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/PHARM/MPD/1.0.0-comment-2/StructureDefinition-ihe-ext-medicationrequest-prescribedQuantity.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/PHARM/MPD/1.0.0-comment-2/StructureDefinition-ihe-ext-medicationrequest-prescribedQuantity.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/PHARM/MPD/1.0.0-comment-2/StructureDefinition-ihe-ext-medicationrequest-prescribedQuantity.html');
else 
  Redirect('https://profiles.ihe.net/PHARM/MPD/1.0.0-comment-2/StructureDefinition-ihe-ext-medicationrequest-prescribedQuantity.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
