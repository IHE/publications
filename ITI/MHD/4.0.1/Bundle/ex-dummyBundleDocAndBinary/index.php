<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://profiles.ihe.net/ITI/MHD/4.0.1/Bundle-ex-dummyBundleDocAndBinary.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://profiles.ihe.net/ITI/MHD/4.0.1/Bundle-ex-dummyBundleDocAndBinary.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://profiles.ihe.net/ITI/MHD/4.0.1/Bundle-ex-dummyBundleDocAndBinary.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://profiles.ihe.net/ITI/MHD/4.0.1/Bundle-ex-dummyBundleDocAndBinary.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://profiles.ihe.net/ITI/MHD/4.0.1/Bundle-ex-dummyBundleDocAndBinary.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://profiles.ihe.net/ITI/MHD/4.0.1/Bundle-ex-dummyBundleDocAndBinary.html');
else 
  Redirect('http://profiles.ihe.net/ITI/MHD/4.0.1/Bundle-ex-dummyBundleDocAndBinary.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
