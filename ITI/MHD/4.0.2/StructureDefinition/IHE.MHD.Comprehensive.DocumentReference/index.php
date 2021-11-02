<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://profiles.ihe.net/ITI/MHD/4.0.2/StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://profiles.ihe.net/ITI/MHD/4.0.2/StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://profiles.ihe.net/ITI/MHD/4.0.2/StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://profiles.ihe.net/ITI/MHD/4.0.2/StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://profiles.ihe.net/ITI/MHD/4.0.2/StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://profiles.ihe.net/ITI/MHD/4.0.2/StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.html');
else 
  Redirect('http://profiles.ihe.net/ITI/MHD/4.0.2/StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
