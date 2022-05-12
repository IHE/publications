<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/StructureDefinition-IHE.PMIR.Audit.Subscription.Create.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/StructureDefinition-IHE.PMIR.Audit.Subscription.Create.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/StructureDefinition-IHE.PMIR.Audit.Subscription.Create.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/StructureDefinition-IHE.PMIR.Audit.Subscription.Create.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/StructureDefinition-IHE.PMIR.Audit.Subscription.Create.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/StructureDefinition-IHE.PMIR.Audit.Subscription.Create.html');
else 
  Redirect('https://profiles.ihe.net/ITI/PMIR/1.4.0/StructureDefinition-IHE.PMIR.Audit.Subscription.Create.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
