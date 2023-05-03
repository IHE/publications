<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PCF/1.0.0-comment/ValueSet-BasicPurposeVS.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PCF/1.0.0-comment/ValueSet-BasicPurposeVS.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PCF/1.0.0-comment/ValueSet-BasicPurposeVS.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PCF/1.0.0-comment/ValueSet-BasicPurposeVS.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/PCF/1.0.0-comment/ValueSet-BasicPurposeVS.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/PCF/1.0.0-comment/ValueSet-BasicPurposeVS.html');
else 
  Redirect('https://profiles.ihe.net/ITI/PCF/1.0.0-comment/ValueSet-BasicPurposeVS.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
