<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://profiles.ihe.net/ITI/PDQm/2.2.2/ImplementationGuide-IHE.ITI.PDQm.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://profiles.ihe.net/ITI/PDQm/2.2.2/ImplementationGuide-IHE.ITI.PDQm.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://profiles.ihe.net/ITI/PDQm/2.2.2/ImplementationGuide-IHE.ITI.PDQm.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://profiles.ihe.net/ITI/PDQm/2.2.2/ImplementationGuide-IHE.ITI.PDQm.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://profiles.ihe.net/ITI/PDQm/2.2.2/ImplementationGuide-IHE.ITI.PDQm.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://profiles.ihe.net/ITI/PDQm/2.2.2/ImplementationGuide-IHE.ITI.PDQm.html');
else 
  Redirect('http://profiles.ihe.net/ITI/PDQm/2.2.2/ImplementationGuide-IHE.ITI.PDQm.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
