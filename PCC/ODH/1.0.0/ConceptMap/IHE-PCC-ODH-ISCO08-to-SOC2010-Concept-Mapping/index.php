<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/PCC/ODH/1.0.0/ConceptMap-IHE-PCC-ODH-ISCO08-to-SOC2010-Concept-Mapping.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/PCC/ODH/1.0.0/ConceptMap-IHE-PCC-ODH-ISCO08-to-SOC2010-Concept-Mapping.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/PCC/ODH/1.0.0/ConceptMap-IHE-PCC-ODH-ISCO08-to-SOC2010-Concept-Mapping.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/PCC/ODH/1.0.0/ConceptMap-IHE-PCC-ODH-ISCO08-to-SOC2010-Concept-Mapping.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/PCC/ODH/1.0.0/ConceptMap-IHE-PCC-ODH-ISCO08-to-SOC2010-Concept-Mapping.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/PCC/ODH/1.0.0/ConceptMap-IHE-PCC-ODH-ISCO08-to-SOC2010-Concept-Mapping.html');
else 
  Redirect('https://profiles.ihe.net/PCC/ODH/1.0.0/ConceptMap-IHE-PCC-ODH-ISCO08-to-SOC2010-Concept-Mapping.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
