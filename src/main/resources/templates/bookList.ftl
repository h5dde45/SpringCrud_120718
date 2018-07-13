<#import "parts/common.ftl" as c>

<@c.page>

<div class="container">
    <h2 class="display-3 ml-5 mt-2">Book list</h2>

    <#if books?has_content>
        <div class="container">
            <table class="table ">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Book Title</th>
                    <th scope="col">Book Author</th>
                    <th scope="col">Price</th>
                    <th scope="col">Edit</th>
                    <th scope="col">Delete</th>
                </tr>
                </thead>
                <tbody>
                    <#list books as book>
                    <tr>
                        <th scope="row">${book.id}</th>
                        <td>
                            <a href="bookdata/${book.id}" target="_blank"
                               class="badge badge-light ">${book.bookTitle}</a>
                        </td>
                        <td>${book.bookAuthor}</td>
                        <td>${book.price/100}</td>
                        <td>
                            <a href="/edit/${book.id}" class="badge badge-info">Edit</a>
                        </td>
                        <td>
                            <a href="/remove/${book.id}" class="badge badge-danger">Delete</a>
                        </td>
                    </tr>
                    </#list>
                </tbody>
            </table>
        </div>
    <#else >
        list empty
    </#if>

    <hr>
    <hr>

    <#if book.id==0>
        <h3 class="display-5 ml-5 mt-5">Add book</h3>

        <form action="/books/add" method="post">
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Book title</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" name="bookTitle" placeholder="Enter bookTitle">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Book author</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" name="bookAuthor" placeholder="Enter bookAuthor">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Book price</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" name="price" placeholder="Enter price">
                </div>
            </div>
            <button type="submit" class="btn btn-primary mb-2">Add book</button>
        </form>

    <#else >
        <h3 class="display-5 ml-5 mt-5">Edit book</h3>

        <form action="/books/add" method="post">
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Id</label>
                <div class="col-sm-6">
                    <input type="text" readonly class="form-control-plaintext"
                           name="id" value="${book.id}">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Book title</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" name="bookTitle"
                           placeholder="${book.bookTitle}">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Book author</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" name="bookAuthor"
                           placeholder="${book.bookAuthor}">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Book price</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" name="price"
                           placeholder="${book.price}">
                </div>
            </div>
            <button type="submit" class="btn btn-primary mb-2">Edit book</button>
        </form>
    </#if>


</div>

</@c.page>
