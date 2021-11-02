<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://profiles.ihe.net/ITI/MHD/4.0.2/List-ex-compSubmissionSetList.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://profiles.ihe.net/ITI/MHD/4.0.2/List-ex-compSubmissionSetList.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://profiles.ihe.net/ITI/MHD/4.0.2/List-ex-compSubmissionSetList.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://profiles.ihe.net/ITI/MHD/4.0.2/List-ex-compSubmissionSetList.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://profiles.ihe.net/ITI/MHD/4.0.2/List-ex-compSubmissionSetList.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://profiles.ihe.net/ITI/MHD/4.0.2/List-ex-compSubmissionSetList.html');
else 
  Redirect('http://profiles.ihe.net/ITI/MHD/4.0.2/List-ex-compSubmissionSetList.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
