<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.0-ballot/StructureDefinition-IHE.MHD.EntryUUID.Identifier.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.0-ballot/StructureDefinition-IHE.MHD.EntryUUID.Identifier.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.0-ballot/StructureDefinition-IHE.MHD.EntryUUID.Identifier.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.0-ballot/StructureDefinition-IHE.MHD.EntryUUID.Identifier.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.0-ballot/StructureDefinition-IHE.MHD.EntryUUID.Identifier.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.0-ballot/StructureDefinition-IHE.MHD.EntryUUID.Identifier.html');
else 
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.0-ballot/StructureDefinition-IHE.MHD.EntryUUID.Identifier.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
