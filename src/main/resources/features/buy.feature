Feature: Buy products
  As a customer
  I want to buy products

  Background:
    Given the following products exist:
#       |  name  |  price  |  ไม่ต้องใส่ชื่อคอลัมน์ แต่ comment ไว้เพื่อให้อ่านเข้าใจง่าย
      | Bread  |  20.50  |
      | Jam    |  80.50  |

  Scenario: Buy one product
    Given a product "Bread" with price 20.50 exists
    When I buy "Bread" with quantity 2
    Then total should be 41.00
