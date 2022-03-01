<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PIXm/3.0.2/StructureDefinition-IHE.PIXm.Query.Parameters.In.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PIXm/3.0.2/StructureDefinition-IHE.PIXm.Query.Parameters.In.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PIXm/3.0.2/StructureDefinition-IHE.PIXm.Query.Parameters.In.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PIXm/3.0.2/StructureDefinition-IHE.PIXm.Query.Parameters.In.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/PIXm/3.0.2/StructureDefinition-IHE.PIXm.Query.Parameters.In.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/PIXm/3.0.2/StructureDefinition-IHE.PIXm.Query.Parameters.In.html');
else 
  Redirect('https://profiles.ihe.net/ITI/PIXm/3.0.2/StructureDefinition-IHE.PIXm.Query.Parameters.In.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
