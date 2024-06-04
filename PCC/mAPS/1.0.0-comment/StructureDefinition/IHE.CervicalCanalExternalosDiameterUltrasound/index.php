<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/StructureDefinition-IHE.CervicalCanalExternalosDiameterUltrasound.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/StructureDefinition-IHE.CervicalCanalExternalosDiameterUltrasound.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/StructureDefinition-IHE.CervicalCanalExternalosDiameterUltrasound.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/StructureDefinition-IHE.CervicalCanalExternalosDiameterUltrasound.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/StructureDefinition-IHE.CervicalCanalExternalosDiameterUltrasound.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/StructureDefinition-IHE.CervicalCanalExternalosDiameterUltrasound.html');
else 
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/StructureDefinition-IHE.CervicalCanalExternalosDiameterUltrasound.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
