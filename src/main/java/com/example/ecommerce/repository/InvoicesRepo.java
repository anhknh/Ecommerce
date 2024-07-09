package com.example.ecommerce.repository;

import com.example.ecommerce.model.Invoices;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface InvoicesRepo extends JpaRepository<Invoices, Integer> {

    @Query(value = "SELECT DAY(CAST(i.invoice_date AS date)) AS date, SUM(i.amount) AS total_revenue " +
            "FROM invoices i " +
            "WHERE YEAR(i.invoice_date) = :year AND MONTH(i.invoice_date) = :month " +
            "GROUP BY CAST(i.invoice_date AS DATE) " +
            "ORDER BY date", nativeQuery = true)
    List<Object[]> findDailyRevenue(@Param("year") int year, @Param("month") int month);

    @Query(value = "select SUM(i.amount) as total_month " +
            "from Invoices i " +
            "WHERE YEAR(i.invoice_date) = :year AND MONTH(i.invoice_date) = :month " +
            "GROUP BY CAST(i.invoice_date AS DATE) "
            , nativeQuery = true)
    Integer findMonthlyRevenue(@Param("year") int year, @Param("month") int month);
}
