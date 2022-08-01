//데이터 링크: https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all

//1번 연습문제//

//고객대응팀 매니저가 왔습니다. 
//카테고리에서 Seafood를 제외하고 카테고리ID와 설명을 추출해달라고 합니다. 
//단, 본부장님께 보고드릴 내용이라 카테고리ID는 카테고리아이디 라는 별칭으로, 
//Description은 한글인 '설명'으로 바꿔달라고 합니다. 

//그리고 카테고리ID가 높은 순으로 5개 ROW만 보고 싶다고 합니다.

//어떻게 해야할까요? 쿼리를 작성해주세요.

SELECT CategoryID AS `카테고리아이디`, Description AS `설명` <- 
FROM [Categories]
WHERE CategoryName != "Seafood"
ORDER BY CategoryID DESC
LIMIT 5

//2번 연습문제//

//세일즈팀에서 공급업체들을 필터링해달라는 요청이 왔습니다. 
//미국(USA)업체와 독일(Germany)를 제외한 공급업체들의 목록을 보고 싶다고 합니다. 
//단, 공급자ID가 14번인 곳은 앞으로 계약하지 않으니 제외시켜달라고 합니다.

//SupplierName은 공급자명으로 바꿔달라고 합니다.

//공급자ID가 높은 순으로 7개의 업체만 보고 싶다고 합니다.

SELECT SupplierName AS `공급자명`
FROM [Suppliers]
WHERE Country != "USA" 
AND Country != "Germany"
AND SupplierID != 14
ORDER BY SupplierID DESC
LIMIT 7

//3번 연습문제//
//HR팀에서 직원ID가 7 미만인 직원목록을 보고 싶다고 합니다. 
//단 Peacock이라는 성을 가진 사람은 이직 가능성이 높아 제외시켜달라고 합니다.
//나이가 많은 순으로 정렬해서 추출해주세요.

SELECT FirstName 
FROM [Employees]
WHERE EmployeeID < 7 
AND LastName != "Peacock"
ORDER BY BirthDate DESC



//
