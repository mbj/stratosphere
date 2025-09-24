import qualified Spec.AutoScalingGroup
import qualified Spec.EC2
import qualified Spec.LambdaS3Copy
import qualified Spec.RDSMasterReplica
import Test.Tasty (defaultMain, testGroup)
import Prelude

main :: IO ()
main =
  defaultMain $
    testGroup
      "Templates"
      [ Spec.AutoScalingGroup.testTree,
        Spec.EC2.testTree,
        Spec.LambdaS3Copy.testTree,
        Spec.RDSMasterReplica.testTree
      ]
