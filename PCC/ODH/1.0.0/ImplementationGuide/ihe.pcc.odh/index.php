<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/PCC/ODH/1.0.0/ImplementationGuide-ihe.pcc.odh.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/PCC/ODH/1.0.0/ImplementationGuide-ihe.pcc.odh.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/PCC/ODH/1.0.0/ImplementationGuide-ihe.pcc.odh.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/PCC/ODH/1.0.0/ImplementationGuide-ihe.pcc.odh.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/PCC/ODH/1.0.0/ImplementationGuide-ihe.pcc.odh.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/PCC/ODH/1.0.0/index.html');
else 
  Redirect('https://profiles.ihe.net/PCC/ODH/1.0.0/ImplementationGuide-ihe.pcc.odh.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
