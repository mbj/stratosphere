module Stratosphere.IoT.JobTemplate.TimeoutConfigProperty (
        TimeoutConfigProperty(..), mkTimeoutConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeoutConfigProperty
  = TimeoutConfigProperty {inProgressTimeoutInMinutes :: (Value Prelude.Integer)}
mkTimeoutConfigProperty ::
  Value Prelude.Integer -> TimeoutConfigProperty
mkTimeoutConfigProperty inProgressTimeoutInMinutes
  = TimeoutConfigProperty
      {inProgressTimeoutInMinutes = inProgressTimeoutInMinutes}
instance ToResourceProperties TimeoutConfigProperty where
  toResourceProperties TimeoutConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::JobTemplate.TimeoutConfig",
         supportsTags = Prelude.False,
         properties = ["InProgressTimeoutInMinutes"
                         JSON..= inProgressTimeoutInMinutes]}
instance JSON.ToJSON TimeoutConfigProperty where
  toJSON TimeoutConfigProperty {..}
    = JSON.object
        ["InProgressTimeoutInMinutes" JSON..= inProgressTimeoutInMinutes]
instance Property "InProgressTimeoutInMinutes" TimeoutConfigProperty where
  type PropertyType "InProgressTimeoutInMinutes" TimeoutConfigProperty = Value Prelude.Integer
  set newValue TimeoutConfigProperty {}
    = TimeoutConfigProperty {inProgressTimeoutInMinutes = newValue, ..}