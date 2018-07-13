<#import "parts/common.ftl" as c>

<@c.page>
<a href="/books" class="badge badge-primary">Book List</a>
<hr>
<div class="card-columns">
    <div class="card" style="width: 18rem;">
        <div class="card-header">
            Id
        </div>
        <ul class="list-group list-group-flush">
            <li class="list-group-item">${book.id}</li>
        </ul>
    </div>
    <div class="card" style="width: 18rem;">
        <div class="card-header">
            BookTitle
        </div>
        <ul class="list-group list-group-flush">
            <li class="list-group-item">${book.bookAuthor}</li>
        </ul>
    </div>
    <div class="card" style="width: 18rem;">
        <div class="card-header">
            BookAuthor
        </div>
        <ul class="list-group list-group-flush">
            <li class="list-group-item">${book.bookAuthor}</li>
        </ul>
    </div>
    <div class="card" style="width: 18rem;">
        <div class="card-header">
            Price
        </div>
        <ul class="list-group list-group-flush">
            <li class="list-group-item">${book.price}</li>
        </ul>
    </div>
</div>
</@c.page>
