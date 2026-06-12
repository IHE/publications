<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/DeId/2.0.0-comment/Bundle-fc7b32fe-13b1-42e9-bca1-ff805587d072.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/DeId/2.0.0-comment/Bundle-fc7b32fe-13b1-42e9-bca1-ff805587d072.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/DeId/2.0.0-comment/Bundle-fc7b32fe-13b1-42e9-bca1-ff805587d072.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/DeId/2.0.0-comment/Bundle-fc7b32fe-13b1-42e9-bca1-ff805587d072.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/DeId/2.0.0-comment/Bundle-fc7b32fe-13b1-42e9-bca1-ff805587d072.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/DeId/2.0.0-comment/Bundle-fc7b32fe-13b1-42e9-bca1-ff805587d072.html');
else 
  Redirect('https://profiles.ihe.net/ITI/DeId/2.0.0-comment/Bundle-fc7b32fe-13b1-42e9-bca1-ff805587d072.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
