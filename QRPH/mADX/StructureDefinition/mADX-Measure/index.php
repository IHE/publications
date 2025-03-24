<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/QRPH/mADX/3.0.0-comment/StructureDefinition-mADX-Measure.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/QRPH/mADX/3.0.0-comment/StructureDefinition-mADX-Measure.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/QRPH/mADX/3.0.0-comment/StructureDefinition-mADX-Measure.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/QRPH/mADX/3.0.0-comment/StructureDefinition-mADX-Measure.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/QRPH/mADX/3.0.0-comment/StructureDefinition-mADX-Measure.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/QRPH/mADX/3.0.0-comment/StructureDefinition-mADX-Measure.html');
else 
  Redirect('https://profiles.ihe.net/QRPH/mADX/3.0.0-comment/StructureDefinition-mADX-Measure.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
