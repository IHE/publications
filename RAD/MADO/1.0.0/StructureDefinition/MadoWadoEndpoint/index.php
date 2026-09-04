<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/RAD/MADO/1.0.0/StructureDefinition-MadoWadoEndpoint.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/RAD/MADO/1.0.0/StructureDefinition-MadoWadoEndpoint.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/RAD/MADO/1.0.0/StructureDefinition-MadoWadoEndpoint.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/RAD/MADO/1.0.0/StructureDefinition-MadoWadoEndpoint.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/RAD/MADO/1.0.0/StructureDefinition-MadoWadoEndpoint.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/RAD/MADO/1.0.0/StructureDefinition-MadoWadoEndpoint.html');
else 
  Redirect('https://profiles.ihe.net/RAD/MADO/1.0.0/StructureDefinition-MadoWadoEndpoint.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
