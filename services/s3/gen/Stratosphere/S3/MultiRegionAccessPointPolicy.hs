module Stratosphere.S3.MultiRegionAccessPointPolicy (
        MultiRegionAccessPointPolicy(..), mkMultiRegionAccessPointPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiRegionAccessPointPolicy
  = MultiRegionAccessPointPolicy {mrapName :: (Value Prelude.Text),
                                  policy :: JSON.Object}
mkMultiRegionAccessPointPolicy ::
  Value Prelude.Text -> JSON.Object -> MultiRegionAccessPointPolicy
mkMultiRegionAccessPointPolicy mrapName policy
  = MultiRegionAccessPointPolicy
      {mrapName = mrapName, policy = policy}
instance ToResourceProperties MultiRegionAccessPointPolicy where
  toResourceProperties MultiRegionAccessPointPolicy {..}
    = ResourceProperties
        {awsType = "AWS::S3::MultiRegionAccessPointPolicy",
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