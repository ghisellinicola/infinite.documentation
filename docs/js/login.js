
console.debug('Adding a modal')

// var d = document.getElementById('hdk-documentation'); // get this from variable?
// console.debug({d})
// d.innerHTML += ' <div class="modal show" id="myModal" role="dialog"> <div class="modal-dialog text-center">  <div class="modal-content" style="min-height:800px"> <div class="modal-header"> <h4 class="modal-title">Login</h4> </div> <div class="modal-body" style="min-height:600px"> <div> <label>Username</label> <input type="text"> </div> <label class="mt-5">Password</label> <input type="password"></div> <div class="modal-footer"> <button type="button" class="btn btn-default text-center">Login</button> </div>  </div> </div> </div> '

var f = document.getElementsByTagName('footer');
console.debug({f})

// console.debug({body: document.body})
// document.body.innerHTML += ' <div class="modal show" id="myModal" role="dialog"> <div class="modal-dialog text-center">  <div class="modal-content" style="min-height:800px"> <div class="modal-header"> <h4 class="modal-title">Login</h4> </div> <div class="modal-body" style="min-height:600px"> <div> <label>Username</label> <input type="text"> </div> <label class="mt-5">Password</label> <input type="password"></div> <div class="modal-footer"> <button type="button" class="btn btn-default text-center">Login</button> </div>  </div> </div> </div> '

function addModal() {
	f.innerHtml += '<h1> CIAO </h1>'
	f.append('	  <div class="modal fade" id="myModal" role="dialog">	<div class="modal-dialog">		  <!-- Modal content-->	<div class="modal-content">			  <div class="modal-header">			<button type="button" class="close" data-dismiss="modal">&times;</button>			<h4 class="modal-title">Modal Header</h4>		  </div>		  <div class="modal-body">			<p>Some text in the modal.</p>		  </div>		  <div class="modal-footer">			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>		  </div>		</div>	 </div></div>');
  }


  $(window).on('load', addModal());