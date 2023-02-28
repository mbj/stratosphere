module Stratosphere.Connect.ApprovedOrigin (
        ApprovedOrigin(..), mkApprovedOrigin
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApprovedOrigin
  = ApprovedOrigin {instanceId :: (Value Prelude.Text),
                    origin :: (Value Prelude.Text)}
mkApprovedOrigin ::
  Value Prelude.Text -> Value Prelude.Text -> ApprovedOrigin
mkApprovedOrigin instanceId origin
  = ApprovedOrigin {instanceId = instanceId, origin = origin}
instance ToResourceProperties ApprovedOrigin where
  toResourceProperties ApprovedOrigin {..}
    = ResourceProperties
        {awsType = "AWS::Connect::ApprovedOrigin",
         supportsTags = Prelude.False,
         properties = ["InstanceId" JSON..= instanceId,
                       "Origin" JSON..= origin]}
instance JSON.ToJSON ApprovedOrigin where
  toJSON ApprovedOrigin {..}
    = JSON.object
        ["InstanceId" JSON..= instanceId, "Origin" JSON..= origin]
instance Property "InstanceId" ApprovedOrigin where
  type PropertyType "InstanceId" ApprovedOrigin = Value Prelude.Text
  set newValue ApprovedOrigin {..}
    = ApprovedOrigin {instanceId = newValue, ..}
instance Property "Origin" ApprovedOrigin where
  type PropertyType "Origin" ApprovedOrigin = Value Prelude.Text
  set newValue ApprovedOrigin {..}
    = ApprovedOrigin {origin = newValue, ..}