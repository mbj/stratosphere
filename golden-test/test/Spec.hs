import qualified Spec.AutoScalingGroup
import Test.Tasty (defaultMain, testGroup)
import Prelude

main :: IO ()
main =
  defaultMain $
    testGroup
      "Templates"
      [ Spec.AutoScalingGroup.testTree
      ]
