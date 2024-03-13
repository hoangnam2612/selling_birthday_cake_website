<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NamHoang Cake</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <style>
            .filter {
                margin: 10px 0;
                padding: 10px;
                border: 1px solid #ccc;
                background-color: #f5f5f5;
            }

            .filter form {
                display: flex;
                align-items: center;
            }

            .filter label {
                margin-right: 10px;
                font-weight: bold;
            }

            .filter input[type="number"] {
                width: 80px;
                padding: 5px;
                border: 1px solid #ccc;
                border-radius: 3px;
            }

            .filter input[type="submit"] {
                background-color: #007bff;
                color: #fff;
                border: none;
                padding: 5px 10px;
                border-radius: 3px;
                cursor: pointer;
            }

            /* Định dạng các thẻ a bên trong .col-sm-12 */
            .col-sm-12 a {
                display: inline-block;
                background-color: #008000; /* Màu xanh lá cây */
                color: #fff; /* Màu chữ trắng */
                padding: 10px 20px; /* Căn lề và kích thước padding theo ý muốn */
                margin: 5px; /* Khoảng cách giữa các ô vuông */
                text-decoration: none; /* Loại bỏ gạch chân trên liên kết */
                border-radius: 3px; /* Định dạng viền cong */
            }

            /* Hover state (khi di chuột qua) */
            .col-sm-12 a:hover {
                background-color: #005500; /* Màu xanh lá cây tối hơn khi hover */
            }

            .col-sm-12 {
                display: flex;
                justify-content: center;
            }

            .col-sm-12 a.active{
                background-color: #005500;
                font-weight: bold;
            }

            .right-align {
                float: right;
                /* Các thuộc tính khác để tùy chỉnh giao diện theo ý muốn */
                margin-top: 10px;
                margin-right: 20px;
            }

        </style>
    </head>
    <body>
        <!--begin of menu-->
        <jsp:include page="Menu.jsp"></jsp:include>
            <!--end of menu-->
            <div class="filter">
                <form action="filter" method="get">
                    <label for="minPrice">Min Price:</label>
                    <input type="number" id="minPrice" name="minPrice" value="${param.minPrice}">
                <label for="maxPrice">Max Price:</label>
                <input type="number" id="maxPrice" name="maxPrice" value="${param.maxPrice}">
                <input type="submit" value="Filter">
            </form>
            <form action="sort" method="get" class="right-align">
                <label for="sortOrder">Sort By:</label>
                <select id="sortOrder" name="sortOrder">
                    <option value="All">All</option>
                    <option value="price-asc">Price - Low to High</option>
                    <option value="price-desc">Price - High to Low</option>
                    <option value="name-asc">A to Z</option>
                    <option value="name-desc">Z to A</option>
                </select>
            </form>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div class="card bg-light mb-3">
                        <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Categories</div>
                        <ul class="list-group category_block">
                            <c:forEach items="${listC}" var="o">
                                <li class="list-group-item text-white ${tag == o.cid ? "active":""}"><a href="category?cid=${o.cid}">${o.cname}</a></li>
                                </c:forEach>

                        </ul>
                    </div>
                    <div class="card bg-light mb-3">
                        <div class="card-header bg-success text-white text-uppercase">Last product</div>
                        <div class="card-body">
                            <img class="img-fluid" src="${p.image}" />
                            <h5 class="card-title">${p.name}</h5>
                            <p class="card-text">${p.description}</p>
                            <p class="bloc_left_price">${p.price} ₫</p>
                        </div>
                    </div>
                </div>

                <div class="col-sm-9">
                    <div class="row">
                        <c:forEach items="${listP}" var="o">
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="card">
                                    <img class="card-img-top" src="${o.image}" alt="Card image cap">
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.description}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-danger btn-block">${o.price} ₫</p>
                                            </div>
                                            <div class="col">
                                                <a href="detail?pid=${o.id}" class="btn btn-success btn-block">Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>

                <div class="col-sm-12">
                    <div class="row">
                        <c:forEach begin="1" end="${endP}" var="i">
                            <a class="${tag == i?"active":""}" href="home?index=${i}">${i}</a>
                        </c:forEach>
                    </div>
                </div>

            </div>
        </div>

        <!-- Footer -->
        <footer class="text-light">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-lg-4 col-xl-3">
                        <h5>About</h5>
                        <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                        <p class="mb-0">
                            Tiệm bánh NamHoang Cake là điểm đến lý tưởng cho những ai yêu thích hương vị ngọt ngào và sáng tạo trong làm bánh. Chúng tôi tự hào mang đến những chiếc bánh tươi ngon và độc đáo, là sự kết hợp hoàn hảo giữa nghệ thuật và hương vị. Với đội ngũ đầu bếp tài năng và tâm huyết, chúng tôi luôn cam kết sử dụng nguyên liệu chất lượng cao để tạo ra những chiếc bánh không chỉ đẹp mắt mà còn ngon miệng.
                        </p>
                    </div>

                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto">
                        <h5>Informations</h5>
                        <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                        <ul class="list-unstyled">
                            <li><a href="https://www.facebook.com/hoanghainam26122003/">Facebook</a></li>
                            <li><a href="https://www.instagram.com/namhoang_2612/">Instagram</a></li>
                        </ul>
                    </div>

                    <div class="col-md-4 col-lg-3 col-xl-3">
                        <h5>Contact</h5>
                        <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                        <ul class="list-unstyled">
                            <li><i class="fa fa-home mr-2"></i> NamHoang Cake</li>
                            <li><i class="fa fa-envelope mr-2"></i> NamHoangCake@gmail.com</li>
                            <li><i class="fa fa-phone mr-2"></i> +84 12345678</li>
                            <li><i class="fa fa-print mr-2"></i> +84 12345678</li>
                        </ul>
                    </div>
                    <div class="col-12 copyright mt-3">
                        <p class="float-left">
                            <a href="#">Back to top</a>
                        </p>
                        <p class="text-right text-muted">created with <i class="fa fa-heart"></i> by <a href="https://t-php.fr/43-theme-ecommerce-bootstrap-4.html"><i>t-php</i></a> | <span>v. 1.0</span></p>
                    </div>
                </div>
            </div>
        </footer>
    </body>
    <script>
        // Lắng nghe sự kiện khi người dùng thay đổi giá trị trong select
        document.getElementById("sortOrder").addEventListener("change", function () {
            // Lấy giá trị đã chọn trong select
            var selectedValue = this.value;

            // Chuyển hướng URL với tham số sắp xếp
            window.location.href = "sort?sortOrder=" + selectedValue;
        });
    </script>
</html>

