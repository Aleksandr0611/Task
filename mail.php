<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />

    <title>Ваше сообщение успешно отправлено</title>

</head>

<body>

<?php
	$back = "<p><a href=\"javascript: history.back()\">Вернуться назад</a></p>";

	if(!empty($_POST['name']) and !empty($_POST['phone'])){

        if(!preg_match("/[0-9a-z_]+@[0-9a-z_^\.]+\.[a-z]{2,3}/i", $_POST['mail']))
        	 {echo   ("Регистрация пользователей с таким почтовым адресом невозможна!".$back);
          exit;}
		$name = trim(strip_tags($_POST['name']));
		$phone = trim(strip_tags($_POST['phone']));
		$mail = trim(strip_tags($_POST['mail']));
		$address = trim(strip_tags($_POST['address']));
		$message = trim(strip_tags($_POST['message']));

		mail('почта_для_получения_сообщений@gmail.com', 'Письмо с адрес_вашего_сайта', 'Вам написал: '.$name.'<br />Его номер: '.$phone.'<br />Его почта: '.$mail.'<br />Его сообщение: '.$message,"Content-type:text/html;charset=windows-1251");

		echo "Ваше сообщение успешно отправлено!<Br> Вы получите ответ в ближайшее время<Br> $back";

		exit;
	}
	else {
		echo "Для отправки сообщения заполните все поля! $back";
		exit;
	}
?>
</body>