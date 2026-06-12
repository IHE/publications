<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/DeId/2.0.0-comment/Bundle-430e32bc-be3e-4c42-a17b-461ea4f402d4.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/DeId/2.0.0-comment/Bundle-430e32bc-be3e-4c42-a17b-461ea4f402d4.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/DeId/2.0.0-comment/Bundle-430e32bc-be3e-4c42-a17b-461ea4f402d4.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/DeId/2.0.0-comment/Bundle-430e32bc-be3e-4c42-a17b-461ea4f402d4.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/DeId/2.0.0-comment/Bundle-430e32bc-be3e-4c42-a17b-461ea4f402d4.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/DeId/2.0.0-comment/Bundle-430e32bc-be3e-4c42-a17b-461ea4f402d4.html');
else 
  Redirect('https://profiles.ihe.net/ITI/DeId/2.0.0-comment/Bundle-430e32bc-be3e-4c42-a17b-461ea4f402d4.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
