<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/RAD/MADO/1.0.0/StructureDefinition-MadoAnatomicalRegionExtension.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/RAD/MADO/1.0.0/StructureDefinition-MadoAnatomicalRegionExtension.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/RAD/MADO/1.0.0/StructureDefinition-MadoAnatomicalRegionExtension.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/RAD/MADO/1.0.0/StructureDefinition-MadoAnatomicalRegionExtension.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/RAD/MADO/1.0.0/StructureDefinition-MadoAnatomicalRegionExtension.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/RAD/MADO/1.0.0/StructureDefinition-MadoAnatomicalRegionExtension.html');
else 
  Redirect('https://profiles.ihe.net/RAD/MADO/1.0.0/StructureDefinition-MadoAnatomicalRegionExtension.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
