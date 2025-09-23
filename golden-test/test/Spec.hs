import Test.Tasty (defaultMain, testGroup)

import Prelude
import qualified Spec.Stratosphere

main :: IO ()
main = defaultMain . testGroup ""
  =<< sequence 
    [ Spec.Stratosphere.test_stratosphere
    ]
