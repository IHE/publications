<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/NPFS/2.2.0/StructureDefinition-IHE.NPFS.UpdateDocumentReference.Audit.Manager.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://profiles.ihe.net/ITI/NPFS/2.2.0/StructureDefinition-IHE.NPFS.UpdateDocumentReference.Audit.Manager.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://profiles.ihe.net/ITI/NPFS/2.2.0/StructureDefinition-IHE.NPFS.UpdateDocumentReference.Audit.Manager.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://profiles.ihe.net/ITI/NPFS/2.2.0/StructureDefinition-IHE.NPFS.UpdateDocumentReference.Audit.Manager.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://profiles.ihe.net/ITI/NPFS/2.2.0/StructureDefinition-IHE.NPFS.UpdateDocumentReference.Audit.Manager.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://profiles.ihe.net/ITI/NPFS/2.2.0/StructureDefinition-IHE.NPFS.UpdateDocumentReference.Audit.Manager.html');
else 
  Redirect('https://profiles.ihe.net/ITI/NPFS/2.2.0/StructureDefinition-IHE.NPFS.UpdateDocumentReference.Audit.Manager.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
