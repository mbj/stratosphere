import qualified Spec.AutoScalingGroup
import qualified Spec.EC2
import Test.Tasty (defaultMain, testGroup)
import Prelude

main :: IO ()
main =
  defaultMain $
    testGroup
      "Templates"
      [ Spec.AutoScalingGroup.testTree,
        Spec.EC2.testTree
      ]
