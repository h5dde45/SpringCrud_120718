<#import "parts/common.ftl" as c>

<@c.page>
<#list books as book>
<p>${book.id}</p>
<p>${book.bookTitle}</p>
<p>${book.bookAuthor}</p>
<p>${book.price}</p>
<hr>
</#list>
</@c.page>
