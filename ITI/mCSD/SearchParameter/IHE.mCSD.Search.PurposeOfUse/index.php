<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/3.8.0/SearchParameter-IHE.mCSD.Search.PurposeOfUse.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/3.8.0/SearchParameter-IHE.mCSD.Search.PurposeOfUse.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/3.8.0/SearchParameter-IHE.mCSD.Search.PurposeOfUse.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/3.8.0/SearchParameter-IHE.mCSD.Search.PurposeOfUse.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/3.8.0/SearchParameter-IHE.mCSD.Search.PurposeOfUse.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/mCSD/3.8.0/SearchParameter-IHE.mCSD.Search.PurposeOfUse.html');
else 
  Redirect('https://profiles.ihe.net/ITI/mCSD/3.8.0/SearchParameter-IHE.mCSD.Search.PurposeOfUse.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
