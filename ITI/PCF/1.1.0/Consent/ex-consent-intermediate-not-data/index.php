<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PCF/1.1.0/Consent-ex-consent-intermediate-not-data.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PCF/1.1.0/Consent-ex-consent-intermediate-not-data.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/PCF/1.1.0/Consent-ex-consent-intermediate-not-data.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/PCF/1.1.0/Consent-ex-consent-intermediate-not-data.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/PCF/1.1.0/Consent-ex-consent-intermediate-not-data.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/PCF/1.1.0/Consent-ex-consent-intermediate-not-data.html');
else 
  Redirect('https://profiles.ihe.net/ITI/PCF/1.1.0/Consent-ex-consent-intermediate-not-data.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
