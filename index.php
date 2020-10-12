<!doctype html>
<html>

   <head>
      <title>Форма обратной связи</title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

   </head>

   <body>

    <div class="conteiner">



      <form method="post" action="mail.php">

         <div class="form-row">
            <div class="col-5">
            <label for="name">ФИО:</label>
            <input maxlength="100" class="form-control" type="text" name="name" required/>
            </div>
         </div>

         <div class="form-row">
            <div class="col-2">
            <label for="phone">Телефон:</label>
            <input maxlength="30" class="form-control" type="text" name="phone" required/>

            <label for="address">Адрес:</label>
            <input maxlength="30" class="form-control" type="text" name="address" />

            <label for="mail">E-mail:</label>
            <input maxlength="30" class="form-control" type="text" name="mail" />
         </div>
         </div>

         <div class="right">
            <label for="message">Сообщение:</label>
            <textarea rows="7" cols="50" name="message"></textarea>

            <input type="submit" value="Отправить" />
         </div>

         <div class="form-group">
            <label for="exampleFormControlFile1">Example file input</label>
            <input type="file" class="form-control-file" id="exampleFormControlFile1">
            <button class="btn btn-primary" type="submit">Submit form</button>
         </div>

      </form>
   </div>

   </body>

</html>
