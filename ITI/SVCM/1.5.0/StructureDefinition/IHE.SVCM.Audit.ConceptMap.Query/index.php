<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.5.0/StructureDefinition-IHE.SVCM.Audit.ConceptMap.Query.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.5.0/StructureDefinition-IHE.SVCM.Audit.ConceptMap.Query.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.5.0/StructureDefinition-IHE.SVCM.Audit.ConceptMap.Query.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.5.0/StructureDefinition-IHE.SVCM.Audit.ConceptMap.Query.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.5.0/StructureDefinition-IHE.SVCM.Audit.ConceptMap.Query.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.5.0/StructureDefinition-IHE.SVCM.Audit.ConceptMap.Query.html');
else 
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.5.0/StructureDefinition-IHE.SVCM.Audit.ConceptMap.Query.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
