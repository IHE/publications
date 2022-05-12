<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/StructureDefinition-IHE.PMIR.Patient.Related.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/StructureDefinition-IHE.PMIR.Patient.Related.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/StructureDefinition-IHE.PMIR.Patient.Related.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/StructureDefinition-IHE.PMIR.Patient.Related.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/StructureDefinition-IHE.PMIR.Patient.Related.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/StructureDefinition-IHE.PMIR.Patient.Related.html');
else 
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/StructureDefinition-IHE.PMIR.Patient.Related.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
