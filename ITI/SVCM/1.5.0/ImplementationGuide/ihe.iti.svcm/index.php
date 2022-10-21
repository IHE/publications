<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.5.0/ImplementationGuide-ihe.iti.svcm.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.5.0/ImplementationGuide-ihe.iti.svcm.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.5.0/ImplementationGuide-ihe.iti.svcm.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.5.0/ImplementationGuide-ihe.iti.svcm.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.5.0/ImplementationGuide-ihe.iti.svcm.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.5.0/ImplementationGuide-ihe.iti.svcm.html');
else 
  Redirect('https://profiles.ihe.net/ITI/SVCM/1.5.0/ImplementationGuide-ihe.iti.svcm.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
