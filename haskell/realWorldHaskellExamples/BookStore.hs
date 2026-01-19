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
data BillingInfo
  = CreditCard CardNumber CardHolder Address
  | CashOnDelivery
  | Invoice CustomerID
  deriving (Show)

bookID (Book id title authors) = id

bookTitle (Book id title authors) = title

bookAuthors (Book id title authors) = authors

nicerID (Book id _ _) = id

nicerTitle (Book _ title _) = title

nicerAuthors (Book _ _ authors) = authors

data Customer = Customer
  { customerID :: CustomerID,
    customerName :: String,
    customerAddress :: Address
  }
  deriving (Show)

-- look at System.Time for good use of a record

customer2 =
  Customer
    { customerID = 1024,
      customerAddress =
        [ "73 arbour wood mews nw",
          "Milwood, street ca 123123",
          "BBAB"
        ]
        customerName = "Tyler"
    }

    
