<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/sIPS/1.0.0/Practitioner-1c616b24-3895-48c4-9a02-9a64110351ef.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/sIPS/1.0.0/Practitioner-1c616b24-3895-48c4-9a02-9a64110351ef.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/sIPS/1.0.0/Practitioner-1c616b24-3895-48c4-9a02-9a64110351ef.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/sIPS/1.0.0/Practitioner-1c616b24-3895-48c4-9a02-9a64110351ef.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/sIPS/1.0.0/Practitioner-1c616b24-3895-48c4-9a02-9a64110351ef.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/sIPS/1.0.0/Practitioner-1c616b24-3895-48c4-9a02-9a64110351ef.html');
else 
  Redirect('https://profiles.ihe.net/ITI/sIPS/1.0.0/Practitioner-1c616b24-3895-48c4-9a02-9a64110351ef.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
