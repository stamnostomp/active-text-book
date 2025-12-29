-- |

module BookStore where


-- books
type ReviewBody = String
type CustomerID = Int
type BookRecord = (BookInfo, BetterReview)

-- payment
type CardHolder = String
type CardNumber = String
type Address = [String]

-- books
data BookInfo = Book Int String [String]
data MagazineInfo = Magazine Int String [String]
                    deriving (Show)
data BetterReview = BetterReview BookInfo CustomerID ReviewBody


-- payment
data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                   deriving (Show)
