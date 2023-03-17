<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/RAD/IRA/1.0.0-comment/StructureDefinition-patientcontext.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/RAD/IRA/1.0.0-comment/StructureDefinition-patientcontext.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/RAD/IRA/1.0.0-comment/StructureDefinition-patientcontext.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/RAD/IRA/1.0.0-comment/StructureDefinition-patientcontext.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/RAD/IRA/1.0.0-comment/StructureDefinition-patientcontext.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/RAD/IRA/1.0.0-comment/StructureDefinition-patientcontext.html');
else 
  Redirect('https://profiles.ihe.net/RAD/IRA/1.0.0-comment/StructureDefinition-patientcontext.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
