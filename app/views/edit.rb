<form action="/articles/<%=@article.id %>" method="post">
<input id="hidden" type="hidden" name="_method" value="PATCH">

<label for="title">Title</label>
<input id="title" type="text" name="article[title]" value="<%= @article.title%>" />

<label for="content">Content</label>
<input id="content" type="text" name="article[content]" value="<%=@article.content %>" />

<input type="submit />"
</form>
