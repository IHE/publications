<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://profiles.ihe.net/ITI/PIXm/3.0.0/StructureDefinition-IHE.PIXm.Patient.BirthDateRequired.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://profiles.ihe.net/ITI/PIXm/3.0.0/StructureDefinition-IHE.PIXm.Patient.BirthDateRequired.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://profiles.ihe.net/ITI/PIXm/3.0.0/StructureDefinition-IHE.PIXm.Patient.BirthDateRequired.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://profiles.ihe.net/ITI/PIXm/3.0.0/StructureDefinition-IHE.PIXm.Patient.BirthDateRequired.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://profiles.ihe.net/ITI/PIXm/3.0.0/StructureDefinition-IHE.PIXm.Patient.BirthDateRequired.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://profiles.ihe.net/ITI/PIXm/3.0.0/StructureDefinition-IHE.PIXm.Patient.BirthDateRequired.html');
else 
  Redirect('http://profiles.ihe.net/ITI/PIXm/3.0.0/StructureDefinition-IHE.PIXm.Patient.BirthDateRequired.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
