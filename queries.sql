-- ============================================
-- Bank Customer Churn Analysis
-- ============================================

-- 1. Negara dengan tingkat churn tertinggi
SELECT Geography, 
    COUNT(*) AS total_nasabah,
    SUM(Exited) AS jumlah_churn,
    ROUND(SUM(Exited) / COUNT(*) * 100, 2) AS persentase_churn
FROM bank_churn
GROUP BY Geography
ORDER BY persentase_churn DESC;

-- 2. Apakah nasabah nggak aktif lebih besar kemungkinan churn?
SELECT IsActiveMember,
    COUNT(*) AS total_nasabah,
    SUM(Exited) AS jumlah_churn,
    ROUND(SUM(Exited) / COUNT(*) * 100, 2) AS persentase_churn
FROM bank_churn
GROUP BY IsActiveMember;

-- 3. Rata-rata credit score: churn vs bertahan
SELECT Exited,
    ROUND(AVG(CreditScore), 2) AS rata_rata_credit_score
FROM bank_churn
GROUP BY Exited;

-- 4. Pengaruh jumlah produk bank ke churn
SELECT NumOfProducts,
    COUNT(*) AS total_nasabah,
    SUM(Exited) AS jumlah_churn,
    ROUND(SUM(Exited) / COUNT(*) * 100, 2) AS persentase_churn
FROM bank_churn
GROUP BY NumOfProducts
ORDER BY NumOfProducts;

-- 5. Kelompok umur dengan churn tertinggi
SELECT 
    CASE 
        WHEN Age < 30 THEN 'Di bawah 30'
        WHEN Age BETWEEN 30 AND 45 THEN '30-45'
        WHEN Age BETWEEN 46 AND 60 THEN '46-60'
        ELSE 'Di atas 60'
    END AS kelompok_umur,
    COUNT(*) AS total_nasabah,
    SUM(Exited) AS jumlah_churn,
    ROUND(SUM(Exited) / COUNT(*) * 100, 2) AS persentase_churn
FROM bank_churn
GROUP BY kelompok_umur
ORDER BY persentase_churn DESC;

-- 6. Hubungan kartu kredit dengan loyalitas nasabah
SELECT HasCrCard,
    COUNT(*) AS total_nasabah,
    SUM(Exited) AS jumlah_churn,
    ROUND(SUM(Exited) / COUNT(*) * 100, 2) AS persentase_churn
FROM bank_churn
GROUP BY HasCrCard;
