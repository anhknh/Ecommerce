document.addEventListener("DOMContentLoaded", function() {
    const dataRevenue = [
        { day: 1, revenue: 120 },
        { day: 2, revenue: 150 },
        { day: 3, revenue: 170 },
        { day: 4, revenue: 280 },
        { day: 5, revenue: 260 },
        { day: 6, revenue: 190 },
        { day: 7, revenue: 140 },
        { day: 8, revenue: 200 },
        { day: 9, revenue: 130 },
        { day: 10, revenue: 120 },
        { day: 11, revenue: 140 },
        { day: 12, revenue: 150 },
        { day: 13, revenue: 340 },
        { day: 14, revenue: 270 },
        { day: 15, revenue: 180 },
        { day: 16, revenue: 190 },
        { day: 17, revenue: 200 },
        { day: 18, revenue: 210 },
        { day: 19, revenue: 220 },
        { day: 20, revenue: 230 },
        { day: 21, revenue: 240 },
        { day: 22, revenue: 250 },
        { day: 23, revenue: 350 },
        { day: 24, revenue: 320 },
        { day: 25, revenue: 280 },
        { day: 26, revenue: 290 },
        { day: 27, revenue: 200 },
        { day: 28, revenue: 210 },
        { day: 29, revenue: 190 },
        { day: 30, revenue: 170 },
        { day: 31, revenue: 150 }
    ];

    const dataCustomer = [
        { day: 1, customer: 520 },
        { day: 2, customer: 450 },
        { day: 3, customer: 770 },
        { day: 4, customer: 680 },
        { day: 5, customer: 660 },
        { day: 6, customer: 890 },
        { day: 7, customer: 440 },
        { day: 8, customer: 300 },
        { day: 9, customer: 530 },
        { day: 10, customer: 620 },
        { day: 11, customer: 440 },
        { day: 12, customer: 750 },
        { day: 13, customer: 940 },
        { day: 14, customer: 670 },
        { day: 15, customer: 380 },
        { day: 16, customer: 290 },
        { day: 17, customer: 500 },
        { day: 18, customer: 710 },
        { day: 19, customer: 820 },
        { day: 20, customer: 530 },
        { day: 21, customer: 540 },
        { day: 22, customer: 550 },
        { day: 23, customer: 650 },
        { day: 24, customer: 620 },
        { day: 25, customer: 680 },
        { day: 26, customer: 670 },
        { day: 27, customer: 700 },
        { day: 28, customer: 710 },
        { day: 29, customer: 890 },
        { day: 30, customer: 870 },
        { day: 31, customer: 850 }
    ];

    const maxRevenue = Math.max(...dataRevenue.map(d => d.revenue));
    const maxCustomer = Math.max(...dataCustomer.map(d => d.customer));
    const chartRevenue = document.getElementById('revenueChart');
    const chartCustomer = document.getElementById('customerChart');

    dataRevenue.forEach(item => {
        const bar = document.createElement('div');
        bar.className = 'bar';
        bar.style.height = `${(item.revenue / maxRevenue) * 70}%`;
        bar.innerHTML = `<span>${item.revenue}</span>`;
        chartRevenue.appendChild(bar);
    });
    dataCustomer.forEach(item => {
        const bar = document.createElement('div');
        bar.className = 'bar';
        bar.style.height = `${(item.customer / maxCustomer) * 70}%`;
        bar.innerHTML = `<span>${item.customer}</span>`;
        chartCustomer.appendChild(bar);
    });
});
