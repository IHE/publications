function hrow(tableTagsArray, title) {
  tableTagsArray.push('<tr style="background-color: #f9f9f9"><td colspan="3"><b>');
  tableTagsArray.push(title);
  tableTagsArray.push('</b></td></tr>');
}

function nrow(tableTagsArray, content) {
  tableTagsArray.push('<tr><td colspan="3">');
  tableTagsArray.push(content);
  tableTagsArray.push('</td></tr>');
}

function row(tableTagsArray, date, url, ver, desc, cl) {
  tableTagsArray.push('<tr>');
  tableTagsArray.push('<td><a href="' + url + '">' + date + '</a></td>');
  tableTagsArray.push('<td>' + ver + '</td>');
  if (cl)
    tableTagsArray.push('<td>' + desc + ' - see <a href="'+url+"/"+cl+'">Change Notes</a></td>');
  else
    tableTagsArray.push('<td>' + desc + '</td>');
  tableTagsArray.push('</tr>');
}

function rowNL(tableTagsArray, date, ver, desc) {
  tableTagsArray.push('<tr>');
  tableTagsArray.push('<td>'+ date + '</td>');
  tableTagsArray.push('<td>' + ver + '</td>');
  tableTagsArray.push('<td>' + desc + '</td>');
  tableTagsArray.push('</tr>');
}
  
function buildDataTable(dataList, curl, dataContainer, title) {
  var tableTagsArray = [
      '<table class="history-grid">',
      '<thead><tr style="background-color: #efefef">',
          '<th width="100px">Date</th>',
          '<th width="100px">Version</th>',
          '<th>Description</th>',
      '</tr></thead><tbody>'
  ];

  hrow(tableTagsArray, "Current Versions");
  var ci = null;
  var cp = null;
  // first pass: any versions labelled current + ci-build
  for (var historyNode in dataList) {
    if (dataList.hasOwnProperty(historyNode)) {
      var element = dataList[historyNode];
      if (element.status == 'ci-build') {
        ci = element;
      } else if (element.current) {
        cp = element.path;
        desc = element.descCurrent;
        if (!desc) {
          desc = element.desc
        }
        row(tableTagsArray, element.date, curl, element.version, desc, null);
      }
    }
  }
  if (!cp) {
    rowNL(tableTagsArray, 'n/a',  '', '(no released version at this time)');
  }
  if (ci) {
    desc = ci.descCurrent;
    if (!desc) {
      desc = ci.descmd;
      if (desc) {
        var reader = new commonmark.Parser();
        var writer = new commonmark.HtmlRenderer();
        var parsed = reader.parse(desc); 
        var desc = writer.render(parsed); 
      }
    }
    if (!desc)
      desc = ci.desc;
    row(tableTagsArray, '(current)', ci.path, '(last commit)', desc, null);
  }
  
  var seq = "!!";
  
  // second pass: all versions, with sequence tag
  for (var historyNode in dataList) {
    if (dataList.hasOwnProperty(historyNode)) {
      var element = dataList[historyNode];
      if (element.status != 'ci-build') {
        if (element.sequence != seq) {
          seq = element.sequence;
          hrow(tableTagsArray, seq+' Sequence');
          if (element.sequenceNote) 
            nrow(tableTagsArray, element.sequenceNote);
        }
        desc = element.descmd;
        if (desc) {
          var reader = new commonmark.Parser();
          var writer = new commonmark.HtmlRenderer();
          var parsed = reader.parse(desc); 
          var desc = writer.render(parsed); 
        } else
          desc = element.desc;
        row(tableTagsArray, element.date, element.path, element.version, desc, element.changes);
      }
    }
  }
          
  tableTagsArray.push('</tbody></table>');
  dataContainer.innerHTML = "<p>The following versions of the "+title+" have been published:</p>"+tableTagsArray.join('');
}

function processIntro(md) {
  var reader = new commonmark.Parser();
  var writer = new commonmark.HtmlRenderer();
  var parsed = reader.parse(md); 
  var result = writer.render(parsed); 
  document.getElementById('intro').innerHTML = result;
}

function load(json) {
  var historyJson = JSON.parse(json.replace(/\n/g, "\\n").replace(/\r/g, "\\r"));
  document.title = historyJson.title;
  var h = document.getElementById('ig-title');
  h.innerHTML = historyJson.title;
  var f = document.getElementById('ig-footer');
  f.innerHTML = historyJson.title;
  if (historyJson.introduction) {
    processIntro(historyJson.introduction);
  }

  var dataContainer = document.getElementById('history-data');
  buildDataTable(historyJson.list, historyJson.canonical, dataContainer, historyJson.title);
}
