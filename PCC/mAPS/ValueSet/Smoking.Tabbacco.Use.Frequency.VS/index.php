<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/ValueSet-Smoking.Tabbacco.Use.Frequency.VS.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/ValueSet-Smoking.Tabbacco.Use.Frequency.VS.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/ValueSet-Smoking.Tabbacco.Use.Frequency.VS.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/ValueSet-Smoking.Tabbacco.Use.Frequency.VS.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/ValueSet-Smoking.Tabbacco.Use.Frequency.VS.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/ValueSet-Smoking.Tabbacco.Use.Frequency.VS.html');
else 
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/ValueSet-Smoking.Tabbacco.Use.Frequency.VS.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
