<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/5.0.0/StructureDefinition-IHE.BasicAudit.MHD5.PatientCreate.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/5.0.0/StructureDefinition-IHE.BasicAudit.MHD5.PatientCreate.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/5.0.0/StructureDefinition-IHE.BasicAudit.MHD5.PatientCreate.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/5.0.0/StructureDefinition-IHE.BasicAudit.MHD5.PatientCreate.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/5.0.0/StructureDefinition-IHE.BasicAudit.MHD5.PatientCreate.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/5.0.0/StructureDefinition-IHE.BasicAudit.MHD5.PatientCreate.html');
else 
  Redirect('https://profiles.ihe.net/ITI/MHD/5.0.0/StructureDefinition-IHE.BasicAudit.MHD5.PatientCreate.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
