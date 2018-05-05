 /*--------------------------------------------------|
| dTreeTable BETA | colinlin1982@hotmail.com        |
|---------------------------------------------------|
| Copyright (c) 2006 Nicholas Lin @ XHDZ            |
|                                                   |
| This script can be used freely as long as all     |
| copyright messages are intact.                    |
|                                                   |
| Updated: 16.06.2006                               |
|--------------------------------------------------*/
/*--------------------------------------------------|
| BASE ON:                                          |
| dTree 2.05 | www.destroydrop.com/javascript/tree/ |
|---------------------------------------------------|
| Copyright (c) 2002-2003 Geir Landr?               |
|                                                   |
| This script can be used freely as long as all     |
| copyright messages are intact.                    |
|                                                   |
| Updated: 17.04.2003                               |
|--------------------------------------------------*/
/*
带复选框的树表控件
修正了checkAll()的BUG，增加行选择功能
*/
/*
functions:
// Node object
Node(id, pid, name, array, checked, open);

// TreeTable object
cTreeTable(objName, colNum);

// Adds a new node to the node array
cTreeTable.prototype.add = function(id, pid, name, array, checked, open);

// Open/close all nodes
cTreeTable.prototype.openAll = function();

cTreeTable.prototype.closeAll = function();

// Outputs the tree to the page
cTreeTable.prototype.toString = function();

// Creates the tree structure
cTreeTable.prototype.addChildren = function(pNode);

// Creates the node icon, url and text
cTreeTable.prototype.addRow = function(node, nodeId);

// Adds the empty and line icons
cTreeTable.prototype.indent = function(node, nodeId);

// Checks if a node has any children and if it is the last sibling
cTreeTable.prototype.setCS = function(node);

// Returns the selected nodes
cTreeTable.prototype.getSelected = function();

// Select row
cTreeTable.prototype.s = function(rowId);

// Toggle Open or close
cTreeTable.prototype.o = function(id);

// Open or close all nodes
cTreeTable.prototype.oAll = function(status);

// Opens the tree to a specific node
cTreeTable.prototype.openTo = function(nId, bFirst);

// Closes all nodes on the same level as certain node
cTreeTable.prototype.closeLevel = function(node);

// clear all values
cTreeTable.prototype.clearAllValues = function(prefices);

// select all
cTreeTable.prototype.checkAll = function(value);

// check node
cTreeTable.prototype.checkRow = function(index);

// for outer embedded elements
cTreeTable.prototype.spanToSpring = function(id, prefix);

// get nodes on leaf checked include outer elements
cTreeTable.prototype.getCheckedIds = function();

// get nodes on leaf checked include outer elements
// in style: {'id1,id2,id3','value1,value2,value3'}
cTreeTable.prototype.getCheckedValues = function(prefices, splitor);

// add a check row
cTreeTable.prototype.addCheckedId = function(id);

// set checked ids
cTreeTable.prototype.setCheckedIds = function(ids);

// Change the status of a node(open or closed)
cTreeTable.prototype.nodeStatus = function(status, id, bottom);

// a node open or close, it's spring's row will change
cTreeTable.prototype.springRowStatus = function(prow, status);

// [Cookie] Clears a cookie
cTreeTable.prototype.clearCookie = function();

// [Cookie] Sets value in a cookie
cTreeTable.prototype.setCookie = function(cookieName, cookieValue, expires, path, domain, secure);

// [Cookie] Gets a value from a cookie
cTreeTable.prototype.getCookie = function(cookieName);

// [Cookie] Returns ids of open nodes as a string
cTreeTable.prototype.updateCookie = function();

// [Cookie] Checks if a node id is in a cookie
cTreeTable.prototype.isOpen = function(id);
*/

// Node object
function Node(id, pid, name, array, checked,checkid, open) {
 this.id = id;
 this.pid = pid;
 this.name = name;
 this.array = array;
 this.checked = checked || false;
 this._io = open || false;   //is open
 this._lockid = -1;     //nearest close ancestor
 this._is = false;     //is selected
 this._ls = false;     //last sidling
 this._hc = false;     //has child?
 this._ai = -1;
 this._layer = -1;     // layer number
 this._p = -1;
 this._ancestor;
 this.checkid=checkid||false;
};

// TreeTable Object
function cTreeTable(objName, colNum,imgpath) {
 this.config = {
  folderLinks   : true,
  useCookies   : true,
  useSelection  : true,
  rowSelection  : true,
  rootSelection  : true,
  useChecks   : true,
  useLines   : true,  //link nodes with lines
  useIcons   : true,
  closeSameLevel  : false,
  allowEmpty   : true,  //allow input empty value in comps
  inOrder   : false,
  valign   : 'bottom',
  align   : 'center'
 };

 this.icon = {
  root  : imgpath+'/base.gif',
  folder  : imgpath+'/folder.gif',
  folderOpen : imgpath+'/folderopen.gif',
  node  : imgpath+'/page.gif',
  empty  : imgpath+'/empty.gif',
  line  : imgpath+'/line.gif',
  join  : imgpath+'/join.gif',
  joinBottom : imgpath+'/joinbottom.gif',
  plus  : imgpath+'/plus.gif',
  plusBottom : imgpath+'/plusbottom.gif',
  minus  : imgpath+'/minus.gif',
  minusBottom : imgpath+'/minusbottom.gif',
  nlPlus  : imgpath+'/nolines_plus.gif',
  nlMinus  : imgpath+'/nolines_minus.gif'
 };
/*
 this.icon = {
  root  : '/public/images/tree/base.gif',
  folder  : '/public/images/tree/folder.gif',
  folderOpen : '/public/images/tree/folderopen.gif',
  node  : '/public/images/tree/page.gif',
  empty  : '/public/images/tree/empty.gif',
  line  : '/public/images/tree/line.gif',
  join  : '/public/images/tree/join.gif',
  joinBottom : '/public/images/tree/joinbottom.gif',
  plus  : '/public/images/tree/plus.gif',
  plusBottom : '/public/images/tree/plusbottom.gif',
  minus  : '/public/images/tree/minus.gif',
  minusBottom : '/public/images/tree/minusbottom.gif',
  nlPlus  : '/public/images/tree/nolines_plus.gif',
  nlMinus  : '/public/images/tree/nolines_minus.gif'
 };
*/
 this.obj = objName;
 this.SPLITOR = ',';
 this.colNum = colNum-1;
 this.aNodes = [];
 this.aIndent = [];
 this.root = new Node(-1, -2, 'root');  //root
 this.selectedNode = null;
 this.selectedFound = false;
 this.completed = false;
};

// Adds a new node to the node array
cTreeTable.prototype.add = function(id, pid, name, array, checked,checkid, open) {
 this.aNodes[this.aNodes.length] = new Node(id, pid, name, array, checked,checkid, open);
};

// Open/close all nodes
cTreeTable.prototype.openAll = function(){
 this.oAll(true);
};

cTreeTable.prototype.closeAll = function() {
 this.oAll(false);
};

// Outputs the treetable to the page
cTreeTable.prototype.toString = function() {
 // update selection configs
 this.config.rowSelection = this.config.useSelection && this.config.rowSelection;
 this.config.rootSelection = this.config.useSelection && this.config.rootSelection;
 // table rows
 var str = '';
 if (document.getElementById) {
  if (this.config.useCookies) this.selectedNode = this.getSelected();
  str += this.addChildren(this.root);
 } else str += 'Browser not supported.';

 if (!this.selectedFound) this.selectedNode = null;

 this.completed = true;

 return str;
};

// Creates the tree structure
cTreeTable.prototype.addChildren = function(pNode) {
 var str = '';
 var n=0;
 if (this.config.inOrder) n = pNode._ai + 1;

 for (n; n<this.aNodes.length; n++) {
  // find pNode's child
  if (this.aNodes[n].pid == pNode.id) {
   var cn = this.aNodes[n];
   cn._p = pNode._ai;
   cn._layer = pNode._layer + 1;
   cn._ai = n;
   this.setCS(cn);
   // recheck cn's open status
   if (cn._hc && !cn._io && this.config.useCookies) {
    cn._io = this.isOpen(cn.id);
   }
   // recheck cn's select status
   if (this.config.useSelection && cn.id == this.selectedNode && !this.selectedFound) {
     cn._is = true;
     this.selectedNode = n;
     this.selectedFound = true;
   }
   // recheck cn's acestor status
   if(this.root.id == pNode.id || this.root.id == pNode.pid) {
    cn._lockid = -1;
   } else {
    cn._lockid = (pNode._io) ? pNode._lockid : pNode.id;
   }
   // row start
   str += '<tr class="' + ((this.config.useSelection) ? (cn._is ? 'rowSel' : 'row') : 'row') +
       '" id="r' + this.obj + n + '" valign="' + this.config.valign + '" style="'
   // hand
   if(this.config.rowSelection) {
    if(this.config.rootSelection || this.root.id != pNode.id) {
        str += 'cursor:hand;';
    }
   }
   // hide row script
   if(this.root.id != pNode.id) {
       str += ((cn._lockid==-1) ? 'display:block;' : 'display:none;');
    str += '">';
   } else {
    str += 'display:block;">';
   }
   // get node
   str += this.addRow(cn, n) + '</tr>';
   // has child
   if (cn._hc) {
     // add child
     str += this.addChildren(cn);
   }
   this.aIndent.pop();
   if (cn._ls) break;
  }
 }

 return str;
};

// Creates the node icon, url and text
cTreeTable.prototype.addRow = function(node, nodeId) {
 var mouseEvent = '';
 if(this.config.rowSelection) {
  if(this.config.rootSelection || node.pid != this.root.id) {
   mouseEvent = ' onclick = "javascript: ' + this.obj + '.s(' + nodeId + ');"';
  }
 }
 // indent
 var str = '<td class="' + ((this.config.useSelection) ? (node._is ? 'nodeSel' : 'node') : 'node') +
         '" id="d' + this.obj + nodeId + '" nowrap align="left"' + mouseEvent + '>' + this.indent(node, nodeId);
 // add check box
 if(this.config.useChecks) {
  str += '<input type="checkbox" name="check" style="width=16px;height:16px" value="'+ nodeId + '" id="k' + this.obj + nodeId;

  if(node.checked) {
   str += '" checked ';
  } else {
   str += '" ';
  }
  str += 'onclick="javascript: ' + this.obj + '.checkRow(' + nodeId + ');">';
 }

 // icon
 if (this.config.useIcons) {
  // use default
  if (!node.icon) {
   node.icon = (this.root.id == node.pid) ? this.icon.root : ((node._hc) ? this.icon.folder : this.icon.node);
  }
  if (!node.iconOpen) {
   node.iconOpen = (node._hc) ? this.icon.folderOpen : this.icon.node;
  }
  // root
  if (this.root.id == node.pid) {
   node.icon = this.icon.root;
   node.iconOpen = this.icon.root;
  }
  // icon complete
  str += '<img id="i' + this.obj + nodeId + '" src="' + ((node._io) ? node.iconOpen : node.icon) + '" alt="" />';
 }
 if(this.config.rootSelection || node.pid != this.root.id) {
  if(this.config.useSelection) {
   str += '<span style="cursor:hand"><a onclick="javascript: ' + this.obj + '.s(' + nodeId + ');">';
  } else if(node._hc && node.pid != this.root.id) {
   str += '<span style="cursor:hand"><a onclick="javascript: ' + this.obj + '.o(' + nodeId + ');">';
  }
 } else {
  str += '<span><a>';
 }
 str += node.name + '</a><span>';
 str += '</td>';
 // array
 var col = 0;
 for(col; col<this.colNum; col++) {
  str += '<td nowrap align="' + this.config.align + '"' + mouseEvent + '>';
  if(!node.array || node.array.length <= col) {
   //test
   str += '</td>';
  } else {
   str += node.array[col] + '</td>';
  }
 }
 return str;
};

// Adds the empty and line icons
cTreeTable.prototype.indent = function(node, nodeId) {
 var str = '';
 if (this.root.id != node.pid) {
  // vertical link lines
  for (var n=0; n<this.aIndent.length; n++) {
   str += '<img src="' +
           ( (this.aIndent[n] == 1 && this.config.useLines) ? this.icon.line : this.icon.empty ) +
     '" alt="" />';
  }
  //
  (node._ls) ? this.aIndent.push(0) : this.aIndent.push(1);

  // open child
  if (node._hc) {
   // herf
   str += '<a href="javascript: ' + this.obj + '.o(' + nodeId + ');"><img id="j' + this.obj + nodeId + '" src="';
   // link to child
   if (!this.config.useLines) {
    str += (node._io) ? this.icon.nlMinus : this.icon.nlPlus;
   } else {
    str += ( (node._io) ?
        ((node._ls) ? this.icon.minusBottom : this.icon.minus) :
        ((node._ls) ? this.icon.plusBottom : this.icon.plus ));
   }
   str += '" alt="" /></a>';
  } else {
   str += '<img src="' +
          ( (this.config.useLines) ? ((node._ls) ? this.icon.joinBottom : this.icon.join ) : this.icon.empty) +
       '" alt="" />';
  }
 }
 return str;
};

// 把祖先id等于指定id的节点标识出来
cTreeTable.prototype.filtrate = function(id) {
 // 把所有节点的_ancestor重置为父节点
 for(var n=0; n<this.aNodes.length; n++) {
  this.aNodes[n]._ancestor = this.aNodes[n]._p;
 }
 var index;
 var ancestor;
 var alist = [];
 for(var n=0; n<this.aNodes.length; n++) {
  index = n;
  ancestor = this.aNodes[index]._ancestor;
  var i = 0;
  while(ancestor!=-1 && this.aNodes[ancestor].id!=id) {
   alist[i] = index;
   i++;
   index = ancestor;
   ancestor = this.aNodes[index]._ancestor;
  }
  for(var j=0; j<i; j++) {
   this.aNodes[alist[j]]._ancestor = ancestor;
  }
 }
}

//checks if a node of specified id has child
cTreeTable.prototype.isLeaf = function(id) {
    for(var n=0; n<this.aNodes.length; n++) {
        if(this.aNodes[n].pid == id) {
            return false;
        } else if(this.aNodes[n].id == id) {
            if(this.aNodes[n]._hc) {
                return false;
            } else {
                return true;
            }
        }
    }
    return true;
}

//get layer of node
cTreeTable.prototype.getLayer = function(id) {
 for(var n=0; n < this.aNodes.length; n++) {
  if(this.aNodes[n].pid == id) {
   return this.aNodes[n]._layer - 1;
  } else if(this.aNodes[n].id == id) {
   return this.aNodes[n]._layer;
  }
 }
 return -1;
}

// Checks if a node has any children and if it is the last sibling
cTreeTable.prototype.setCS = function(node) {
 var lastId;
 for (var n=0; n<this.aNodes.length; n++) {
  if (this.aNodes[n].pid == node.id) node._hc = true;
  if (this.aNodes[n].pid == node.pid) lastId = this.aNodes[n].id;
 }

 if (lastId==node.id) node._ls = true;
};

// Returns the selected node
cTreeTable.prototype.getSelected = function() {
 var sn = this.getCookie('cs' + this.obj);
 return (sn) ? sn : null;
};

// Highlights the selected node
cTreeTable.prototype.s = function(id) {
 if (!this.config.useSelection) return;
 var cn = this.aNodes[id];
 if (cn._hc && !this.config.folderLinks) return;
 if (this.selectedNode != id) {
  if (this.selectedNode || this.selectedNode==0) {
   eOld = document.getElementById("d" + this.obj + this.selectedNode);
   eOld.className = "node";
   // row
   eOldRow = document.getElementById("r" + this.obj + this.selectedNode);
   eOldRow.className = "row";
  }
  // row
  eNewRow = document.getElementById("r" + this.obj + id);
  eNewRow.className = "rowSel";
  // Node
  eNew = document.getElementById("d" + this.obj + id);
  eNew.className = "nodeSel";
  this.selectedNode = id;
  if (this.config.useCookies) this.setCookie('cs' + this.obj, cn.id);
 }
};

// Toggle Open or close
cTreeTable.prototype.o = function(id) {
 var cn = this.aNodes[id];
 this.nodeStatus(!cn._io, id, cn._ls);
 cn._io = !cn._io;
 if (this.config.closeSameLevel) this.closeLevel(cn);
 if (this.config.useCookies) this.updateCookie();
};

// Open or close all nodes
cTreeTable.prototype.oAll = function(status) {
 for (var n=0; n<this.aNodes.length; n++) {
  var node = this.aNodes[n];
  if(node.pid != this.root.id) {
   // folders
   if(node._hc && node._io != status) {
    this.updateLinkAndIcon(status, n, node._ls);
    node._io = status;
   }
   // locks
   if(this.aNodes[node._p].pid != this.root.id) {
    node._lockid = (status) ? -1 : node.pid;
    eRow = document.getElementById('r' + this.obj + n);
    eRow.style.display = (status) ? '': 'none';
   }
  }
 }
 if (this.config.useCookies) this.updateCookie();
};

// Opens the tree to a specific node
cTreeTable.prototype.openTo = function(nId, bSelect, bFirst) {
 if (!bFirst) {
  for (var n=0; n<this.aNodes.length; n++) {
   if (this.aNodes[n].id == nId) {
    nId=n;
    break;
   }
  }
 }

 var cn=this.aNodes[nId];
 if (cn.pid==this.root.id || !cn._p) return;
 cn._io = true;
 cn._is = bSelect;
 if (this.completed && cn._hc) this.nodeStatus(true, cn._ai, cn._ls);
 if (this.completed && bSelect) this.s(cn._ai);
 else if (bSelect) this._sn=cn._ai;
 this.openTo(this.aNodes[cn._p]._ai, false, true);
};

// Closes all nodes on the same level as certain node
cTreeTable.prototype.closeLevel = function(node) {
 for (var n=0; n<this.aNodes.length; n++) {
  if (this.aNodes[n].pid == node.pid && this.aNodes[n].id != node.id && this.aNodes[n]._hc && this.aNodes[n]._io) {
   this.nodeStatus(false, n, this.aNodes[n]._ls);
   this.aNodes[n]._io = false;
  }
 }
};

// clear all values
cTreeTable.prototype.clearAllValues = function(prefices) {
 this.checkAll(false);
 if(prefices!=null && prefices.length!=0) {
  for(var n=0; n<this.aNodes.length; n++) {
   for(var i=0; i<prefices.length; i++) {
    elem = document.getElementById(prefices[i] + this.aNodes[n].id);
    elem.value = null;
   }
  }
 }
};

// select all
cTreeTable.prototype.checkAll = function(value) {
 if(!this.config.useChecks) return;
    if(value==null) {
        value = true;
    }
 // change checked status
 for(var n=0; n<this.aNodes.length; n++) {
  this.aNodes[n].checked = value;
  // update view
  eBox =  document.getElementById('k' + this.obj + n);
  eBox.status = this.aNodes[n].checked;
 }
};

// check node
cTreeTable.prototype.checkRow = function(index) {
 if(!this.config.useChecks) return;
 // change checked status
 var node = this.aNodes[index];
 node.checked = !node.checked;
 eBox = document.getElementById('k' + this.obj + index);
 eBox.status = node.checked;
 if(node._hc) {
  this.filtrate(node.id);
  for(var n=0; n<this.aNodes.length; n++) {
   if(this.aNodes[n]._ancestor==index) {
    this.aNodes[n].checked = node.checked;
    // update view
    eBox =  document.getElementById('k' + this.obj + n);
    eBox.status = node.checked;
   }
  }
 }
}

// for outer embedded elements
cTreeTable.prototype.spanToSpring = function(id, prefix) {
 if(this.isLeaf(id)) {
  return;
 }
 element = document.getElementById(prefix + id);
 this.filtrate(id);
 // change spring values
 for(var n=0; n<this.aNodes.length; n++) {
  if(this.aNodes[n]._ancestor!=-1) {
   // get element
   eSpring = document.getElementById(prefix + this.aNodes[n].id);
   eSpring.value = element.value;
  }
 }
}

// get nodes on leaf checked include outer elements
cTreeTable.prototype.getCheckedIds = function() {
 var selects = [];
 if(!this.config.useChecks) return selects;
 for(var n=0; n<this.aNodes.length; n++) {
  var node = this.aNodes[n];
  //edit by oyxz 2006年9月14日
  //if(!node._hc && node.checked) {
  if(node.checkid && node.checked) {
   selects[selects.length] = node.id;
  }
 }
 return selects;
}

//得到选中的id
cTreeTable.prototype.showCheckedIds = function() {
	var prefices = [];
	prefices[0] = 'sr';
	return this.getCheckedIds(prefices);
}


// get nodes on leaf checked include outer elements
// in style: {'id1,id2,id3','value1,value2,value3'}
cTreeTable.prototype.getCheckedValues = function(prefices, splitor) {
 if(splitor==null || splitor.length==0) {
  splitor = this.SPLITOR;
 }
 var selects = [];
 if(prefices==null) {
  selects[0] = '';
 } else {
        // both prefices and its length is not null
  for(var p=0; p<=prefices.length; p++) {
   selects[p] = '';
  }
 }
 if(!this.config.useChecks) return selects;
 for(var n=0; n<this.aNodes.length; n++) {
  var node = this.aNodes[n];
  if(!node._hc && node.checked) {
   //ids
   selects[0] += node.id + splitor;
   // values
   if(prefices!=null && prefices.length!=0) {
    for(var k=0; k<prefices.length; k++) {
     elem = document.getElementById(prefices[k] + node.id);
     if(!this.config.allowEmpty && (elem.value==null||elem.value=="")) {
      this.s(n);
      return null;
     }
     selects[k+1] += elem.value + splitor;
    }
   }
  }
 }
 return selects;
}

// add a check row
cTreeTable.prototype.addCheckedId = function(id) {
 if(!this.config.useChecks) return;
 if(id != null) {
  for(var n=0; n<this.aNodes.length; n++) {
            if(!this.aNodes[n]._hc && this.aNodes[n].id==id) {
    eBox = document.getElementById('k' + this.obj + n);
    this.aNodes[n].checked = true;
    eBox.status = this.aNodes[n].checked;
                break;
            }
  }
 }
}

// set checked ids
cTreeTable.prototype.setCheckedIds = function(ids) {
 if(!this.config.useChecks) return;
 if(ids==null || ids.length==0) {
  this.checkAll(false);
 } else {
  for(var n=0; n<this.aNodes.length; n++) {
   eBox = document.getElementById('k' + this.obj + n);
   this.aNodes[n].checked = false;
   if(!this.aNodes[n]._hc) {
    for(var i=0; i<ids.length; i++) {
     if(ids[i]==this.aNodes[n].id) {
      this.aNodes[n].checked = true;
      break;
     }
    }
   }
   eBox.status = this.aNodes[n].checked;
  }
 }
}

cTreeTable.prototype.updateLinkAndIcon = function(status, id, bottom) {
 eJoin = document.getElementById('j' + this.obj + id);

 if (this.config.useIcons) {
  eIcon = document.getElementById('i' + this.obj + id);
  eIcon.src = (status) ? this.aNodes[id].iconOpen : this.aNodes[id].icon;
 }

 eJoin.src = (this.config.useLines)?
 ((status)?((bottom)?this.icon.minusBottom:this.icon.minus):((bottom)?this.icon.plusBottom:this.icon.plus)):
 ((status)?this.icon.nlMinus:this.icon.nlPlus);
}

// Change the status of a node(open or closed)
cTreeTable.prototype.nodeStatus = function(status, id, bottom) {
 this.updateLinkAndIcon(status, id, bottom);
 
 if(this.aNodes[id]._hc && this.aNodes[id]._io != status) {
  this.springRowStatus(id, status);
 }
};

// a node open or close, it's spring's row will change
cTreeTable.prototype.springRowStatus = function(index, status) {
 var pNode = this.aNodes[index];
 if(!status) {
  this.filtrate(pNode.id);
 }
 // 修改节点状态
 for (var n=0; n<this.aNodes.length; n++) {
  var cn = this.aNodes[n];
  // find pNode's spring
  if(status) {
   if(cn._lockid==pNode.id) {
    cn._lockid = pNode._lockid;
    eRow = document.getElementById('r' + this.obj + n);
    eRow.style.display = '';
   }
  } else {
   if (cn._ancestor==index && cn._lockid==-1) {
    cn._lockid = pNode.id;
    eRow = document.getElementById('r' + this.obj + n);
    eRow.style.display = 'none';
   }
  }
 }
};

// [Cookie] Clears a cookie
cTreeTable.prototype.clearCookie = function() {
 var now = new Date();
 var yesterday = new Date(now.getTime() - 1000 * 60 * 60 * 24);
 this.setCookie('co'+this.obj, 'cookieValue', yesterday);
 this.setCookie('cs'+this.obj, 'cookieValue', yesterday);
};


// [Cookie] Sets value in a cookie
cTreeTable.prototype.setCookie = function(cookieName, cookieValue, expires, path, domain, secure) {
 document.cookie =
  escape(cookieName) + '=' + escape(cookieValue)
  + (expires ? '; expires=' + expires.toGMTString() : '')
  + (path ? '; path=' + path : '')
  + (domain ? '; domain=' + domain : '')
  + (secure ? '; secure' : '');
};

// [Cookie] Gets a value from a cookie
cTreeTable.prototype.getCookie = function(cookieName) {
 var cookieValue = '';
 var posName = document.cookie.indexOf(escape(cookieName) + '=');

 if (posName != -1) {
  var posValue = posName + (escape(cookieName) + '=').length;
  var endPos = document.cookie.indexOf(';', posValue);

  if (endPos != -1) cookieValue = unescape(document.cookie.substring(posValue, endPos));
  else cookieValue = unescape(document.cookie.substring(posValue));
 }

 return (cookieValue);
};

// [Cookie] Returns ids of open nodes as a string
cTreeTable.prototype.updateCookie = function() {
 var str = '';
 for (var n=0; n<this.aNodes.length; n++) {
  if (this.aNodes[n]._io && this.aNodes[n].pid != this.root.id) {
   if (str) str += '.';
   str += this.aNodes[n].id;
  }
 }
 this.setCookie('co' + this.obj, str);
};

// [Cookie] Checks if a node id is in a cookie
cTreeTable.prototype.isOpen = function(id) {
 var aOpen = this.getCookie('co' + this.obj).split('.');
 for (var n=0; n<aOpen.length; n++) {
  if (aOpen[n] == id) return true;
 }

 return false;
};

// If Push and pop is not implemented by the browser
if (!Array.prototype.push) {

 Array.prototype.push = function array_push() {

  for(var i=0;i<arguments.length;i++)

   this[this.length]=arguments[i];

  return this.length;

 }

};

if (!Array.prototype.pop) {

 Array.prototype.pop = function array_pop() {

  lastElement = this[this.length-1];

  this.length = Math.max(this.length-1,0);

  return lastElement;

 }

};



 
