<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.4.0/ValueSet-svcm-example2-valueset.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.4.0/ValueSet-svcm-example2-valueset.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.4.0/ValueSet-svcm-example2-valueset.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.4.0/ValueSet-svcm-example2-valueset.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.4.0/ValueSet-svcm-example2-valueset.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.4.0/ValueSet-svcm-example2-valueset.html');
else 
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.4.0/ValueSet-svcm-example2-valueset.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
