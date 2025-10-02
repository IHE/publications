<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/QRPH/CCG/1.0.0/StructureDefinition-ccg-card-stoprx.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/QRPH/CCG/1.0.0/StructureDefinition-ccg-card-stoprx.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/QRPH/CCG/1.0.0/StructureDefinition-ccg-card-stoprx.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/QRPH/CCG/1.0.0/StructureDefinition-ccg-card-stoprx.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/QRPH/CCG/1.0.0/StructureDefinition-ccg-card-stoprx.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/QRPH/CCG/1.0.0/StructureDefinition-ccg-card-stoprx.html');
else 
  Redirect('https://profiles.ihe.net/QRPH/CCG/1.0.0/StructureDefinition-ccg-card-stoprx.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
