let productChart;

fetch("data/product_sales.csv")
    .then(function(response) {
        return response.text();
    })
    .then(function(data) {

        var rows = data.trim().split("\n");

        var labels = [];
        var sales = [];

        rows.slice(1).forEach(function(row) {

            var columns = row.split("\t");

            labels.push(columns[1]);
            sales.push(Number(columns[2]));
        });

        var ctx = document.getElementById("productSalesChart");

        productChart = new Chart(ctx, {
            type: "horizontalBar",

            data: {
                labels: labels,

                datasets: [{
                    label: "Total Sales",
                    data: sales
                }]
            },

            options: {
                responsive: true,

                scales: {
                    xAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
    });

let categoryChart;

fetch("data/category_sales.csv")
    .then(function(response) {
        return response.text();
    })
    .then(function(data) {

        var rows = data.trim().split("\n");

        var labels = [];
        var sales = [];

        rows.slice(1).forEach(function(row) {

            var columns = row.split("\t");

            labels.push(columns[0]);
            sales.push(Number(columns[1]));
        });

        var ctx = document.getElementById("categorySalesChart");

        categoryChart = new Chart(ctx, {
            type: "bar",

            data: {
                labels: labels,

                datasets: [{
                    label: "Total Sales",
                    data: sales
                }]
            },

            options: {
                responsive: true,

                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
    });

let monthlyChart;

fetch("data/monthly_sales.csv")
    .then(function(response) {
        return response.text();
    })
    .then(function(data) {

        var rows = data.trim().split("\n");

        var labels = [];
        var sales = [];

        rows.slice(1).forEach(function(row) {

            var columns = row.split("\t");

            labels.push(columns[0]);
            sales.push(Number(columns[1]));
        });

        var ctx = document.getElementById("monthlySalesChart");

        monthlyChart = new Chart(ctx, {
            type: "line",

            data: {
                labels: labels,

                datasets: [{
                    label: "Monthly Sales",
                    data: sales,
                    fill: false,
                    borderColor: "blue"
                }]
            },

            options: {
                responsive: true,

                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
    });

let customerChart;

fetch("data/top_customers.csv")
    .then(function(response) {
        return response.text();
    })
    .then(function(data) {

        var rows = data.trim().split("\n");

        var labels = [];
        var sales = [];

        rows.slice(1).forEach(function(row) {

            var columns = row.split("\t");

            labels.push(columns[1]);
            sales.push(Number(columns[2]));
        });

        var ctx = document.getElementById("customerSalesChart");

        customerChart = new Chart(ctx, {
            type: "horizontalBar",

            data: {
                labels: labels,

                datasets: [{
                    label: "Total Spending",
                    data: sales
                }]
            },

           options: {
                responsive: true,

                scales: {
                    xAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
    });

let statusChart;

fetch("data/order_status.csv")
    .then(function(response) {
        return response.text();
    })
    .then(function(data) {

        var rows = data.trim().split("\n");

        var labels = [];
        var counts = [];

        rows.slice(1).forEach(function(row) {

            var columns = row.split("\t");

            labels.push(columns[0]);
            counts.push(Number(columns[1]));
        });

        var ctx = document.getElementById("orderStatusChart");

        statusChart = new Chart(ctx, {
            type: "doughnut",

            data: {
                labels: labels,

                datasets: [{
                    data: counts
                }]
            },

            options: {
                responsive: true
            }
        });
    });


fetch("data/monthly_sales.csv")
    .then(function(response) {
        return response.text();
    })
    .then(function(data) {

        var rows = data.trim().split("\n");
        var totalSales = 0;

        rows.slice(1).forEach(function(row) {

            var columns = row.split("\t");

            if (columns.length >= 2 && !isNaN(Number(columns[1]))) {
                totalSales += Number(columns[1]);
            }
        });

        document.getElementById("totalSales").innerHTML =
            "Total Sales: ₹" + totalSales.toLocaleString("en-IN");
    });
fetch("data/order_status.csv")
    .then(function(response) {
        return response.text();
    })
    .then(function(data) {

        var rows = data.trim().split("\n");
        var totalOrders = 0;

        rows.slice(1).forEach(function(row) {

            var columns = row.split("\t");

            if (columns.length >= 2 && !isNaN(Number(columns[1]))) {
                totalOrders += Number(columns[1]);
            }
        });

        document.getElementById("totalOrders").innerHTML =
            "Total Orders: " + totalOrders;
    });

