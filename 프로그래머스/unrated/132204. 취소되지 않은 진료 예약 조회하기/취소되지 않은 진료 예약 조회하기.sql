SELECT BC.APNT_NO, A.PT_NAME, A.PT_NO, BC.MCDP_CD, BC.DR_NAME, BC.APNT_YMD
FROM (SELECT C.PT_NO, C.MCDP_CD, C.APNT_YMD, B.DR_NAME, C.APNT_NO
      FROM DOCTOR B
      JOIN APPOINTMENT C
      ON B.DR_ID = C.MDDR_ID
      WHERE TO_CHAR(C.APNT_YMD, 'YYYY-MM-DD') = '2022-04-13'
      AND C.MCDP_CD = 'CS'
      AND C.APNT_CNCL_YN = 'N') BC
JOIN PATIENT A
ON A.PT_NO = BC.PT_NO
ORDER BY BC.APNT_YMD ASC;