<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/Observation-ex-BodyWeightMeasuredPrePregnancy.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/Observation-ex-BodyWeightMeasuredPrePregnancy.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/Observation-ex-BodyWeightMeasuredPrePregnancy.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/Observation-ex-BodyWeightMeasuredPrePregnancy.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/Observation-ex-BodyWeightMeasuredPrePregnancy.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/Observation-ex-BodyWeightMeasuredPrePregnancy.html');
else 
  Redirect('https://profiles.ihe.net/PCC/mAPS/1.0.0-comment/Observation-ex-BodyWeightMeasuredPrePregnancy.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
