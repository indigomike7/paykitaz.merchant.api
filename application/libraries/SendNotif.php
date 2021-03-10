<?php

 // require __DIR__ . '/vendor/autoload.php';

class SendNotif {

	function kirimGeneral($pengirim, $message){

		$options = array(
		    'cluster' => 'mt1',
		    'useTLS' => true
		  );
		  $pusher = new Pusher\Pusher(
		    '6781e149e9568e8efd13',
		    '5352abca2c98d720ceb1',
		    '1115748',
		    $options
		  );

		$data['message'] = $message;
		$data['name'] = $pengirim;
		$pusher->trigger('general-channel', 'my-event', $data);
	}

	function kirimAdmin($datakirim){
		$options = array(
		    'cluster' => 'mt1',
		    'useTLS' => true
		  );
		  $pusher = new Pusher\Pusher(
		    '6781e149e9568e8efd13',
		    '5352abca2c98d720ceb1',
		    '1115748',
		    $options
		  );
		
          $pusher->trigger('admin-channel', 'my-event', $datakirim);
	}

	


}