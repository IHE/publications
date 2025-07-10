<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/QRPH/CCG/1.0.0-comment/PlanDefinition-CCG-patient-plans-example.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/QRPH/CCG/1.0.0-comment/PlanDefinition-CCG-patient-plans-example.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/QRPH/CCG/1.0.0-comment/PlanDefinition-CCG-patient-plans-example.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/QRPH/CCG/1.0.0-comment/PlanDefinition-CCG-patient-plans-example.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/QRPH/CCG/1.0.0-comment/PlanDefinition-CCG-patient-plans-example.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/QRPH/CCG/1.0.0-comment/PlanDefinition-CCG-patient-plans-example.html');
else 
  Redirect('https://profiles.ihe.net/QRPH/CCG/1.0.0-comment/PlanDefinition-CCG-patient-plans-example.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
