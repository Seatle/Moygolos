<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<fieldset id="regForm">
  <legend>Регистрация</legend>
  <p>
    <label for="name">Имя:</label>
    <input id="username" name="username" value="" class="field" />
  </p>
  <p>
    <label for="email">E-mail:</label>
    <input id="email" name="email" class="field" />
  </p>
  <p>
    <label for="passw">Пароль:</label>
    <input type="password" id="passw" class="field" />
  </p>
  <p>
    <label for="country">Страна:</label>
    <select class="field">
      <option id="1">Украина</option>
      <option id="2">Россия</option>
    </select>
  </p>
  <p style="text-align:center">
    <input type="submit" id="register" value="OK" style="width: 80px" onclick="tb_remove();addVoice()" />
  </p>
</fieldset>
