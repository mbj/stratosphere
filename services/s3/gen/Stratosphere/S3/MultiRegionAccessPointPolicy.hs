module Stratosphere.S3.MultiRegionAccessPointPolicy (
        MultiRegionAccessPointPolicy(..), mkMultiRegionAccessPointPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiRegionAccessPointPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-multiregionaccesspointpolicy.html>
    MultiRegionAccessPointPolicy {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-multiregionaccesspointpolicy.html#cfn-s3-multiregionaccesspointpolicy-mrapname>
                                  mrapName :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-multiregionaccesspointpolicy.html#cfn-s3-multiregionaccesspointpolicy-policy>
                                  policy :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiRegionAccessPointPolicy ::
  Value Prelude.Text -> JSON.Object -> MultiRegionAccessPointPolicy
mkMultiRegionAccessPointPolicy mrapName policy
  = MultiRegionAccessPointPolicy
      {haddock_workaround_ = (), mrapName = mrapName, policy = policy}
instance ToResourceProperties MultiRegionAccessPointPolicy where
  toResourceProperties MultiRegionAccessPointPolicy {..}
    = ResourceProperties
        {awsType = "AWS::S3::MultiRegionAccessPointPolicy",
         supportsTags = Prelude.False,
         properties = ["MrapName" JSON..= mrapName,
                       "Policy" JSON..= policy]}
instance JSON.ToJSON MultiRegionAccessPointPolicy where
  toJSON MultiRegionAccessPointPolicy {..}
    = JSON.object
        ["MrapName" JSON..= mrapName, "Policy" JSON..= policy]
instance Property "MrapName" MultiRegionAccessPointPolicy where
  type PropertyType "MrapName" MultiRegionAccessPointPolicy = Value Prelude.Text
  set newValue MultiRegionAccessPointPolicy {..}
    = MultiRegionAccessPointPolicy {mrapName = newValue, ..}
instance Property "Policy" MultiRegionAccessPointPolicy where
  type PropertyType "Policy" MultiRegionAccessPointPolicy = JSON.Object
  set newValue MultiRegionAccessPointPolicy {..}
    = MultiRegionAccessPointPolicy {policy = newValue, ..}