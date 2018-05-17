<?php

	$mysqli = new mysqli("localhost", "root", "", "MOYA_BASA_DANNIH");
	$id=$_REQUEST["id"];
	$comment_res = $mysqli -> query("SELECT * From comments");
	$name = $_REQUEST["name"];
	$mail_temp = $_REQUEST["mail"];
	$text_comment = $_REQUEST["text_comment"];
	if($_POST['submit'] && preg_match("/[0-9a-z]+@[a-z]/", $mail_temp)){
		$newscomment = $mysqli->query("INSERT INTO `comments` (`name`, `text_comment`,`mail_temp`) VALUES ('".$name."', '".$text_comment."','".$mail_temp."')");// Добавляем комментарий в таблицу
		header("Location: ".$_SERVER["HTTP_REFERER"]);// Делаем реридект обратно
	}

?>

<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">


<div class="Content">
	<?while($b = $comment_res -> fetch_object()):?>
			</br>
			
			<div class="namer" style="
			border: 1px solid black;
			"> <label><b>Имя:</b> <?=$b ->name;?></label> </div>
		
			<div class="namer" style="
			border: 1px solid red;
			"> <label><b>email:</b> <?=$b -> mail_temp;?></label></br></div>
			</br>
			
			<div class="namer" style="
			border: 1px solid red;
			"><?=$b -> text_comment;?>
			</div>
			
			</br>
	<?endwhile?>
	
	<form method="post">
	</br></br></br>
		<p>
			<label>Имя:</label>
			<input type="text" name="name" required />
		</p>
		<p>
		<label>Электронная почта:</label>
		<input type="text" name="mail" required />
		</p>
		<p>
			<label>Комментарий:</label>
			<br />
			<textarea name="text_comment" cols="30" rows="5" required > </textarea>
		</p>
		<p>
			<input type="submit" name="submit" value="Отправить" />
		</p>
	</form>
</div>