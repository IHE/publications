<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.1/DocumentReference-ex-DocumentReferenceUnContained.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.1/DocumentReference-ex-DocumentReferenceUnContained.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.1/DocumentReference-ex-DocumentReferenceUnContained.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.1/DocumentReference-ex-DocumentReferenceUnContained.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.1/DocumentReference-ex-DocumentReferenceUnContained.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.1/DocumentReference-ex-DocumentReferenceUnContained.html');
else 
  Redirect('https://profiles.ihe.net/ITI/MHD/4.2.1/DocumentReference-ex-DocumentReferenceUnContained.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
