<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/4.0.0-comment/StructureDefinition-IHE.mCSD.Audit.CareServices.Process.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/4.0.0-comment/StructureDefinition-IHE.mCSD.Audit.CareServices.Process.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/4.0.0-comment/StructureDefinition-IHE.mCSD.Audit.CareServices.Process.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/4.0.0-comment/StructureDefinition-IHE.mCSD.Audit.CareServices.Process.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/4.0.0-comment/StructureDefinition-IHE.mCSD.Audit.CareServices.Process.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/4.0.0-comment/StructureDefinition-IHE.mCSD.Audit.CareServices.Process.html');
else 
  Redirect('https://profiles.ihe.net/ITI/mCSD/4.0.0-comment/StructureDefinition-IHE.mCSD.Audit.CareServices.Process.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
