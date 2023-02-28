module Stratosphere.SES.ConfigurationSet.GuardianOptionsProperty (
        GuardianOptionsProperty(..), mkGuardianOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GuardianOptionsProperty
  = GuardianOptionsProperty {optimizedSharedDelivery :: (Value Prelude.Text)}
mkGuardianOptionsProperty ::
  Value Prelude.Text -> GuardianOptionsProperty
mkGuardianOptionsProperty optimizedSharedDelivery
  = GuardianOptionsProperty
      {optimizedSharedDelivery = optimizedSharedDelivery}
instance ToResourceProperties GuardianOptionsProperty where
  toResourceProperties GuardianOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ConfigurationSet.GuardianOptions",
         supportsTags = Prelude.False,
         properties = ["OptimizedSharedDelivery"
                         JSON..= optimizedSharedDelivery]}
instance JSON.ToJSON GuardianOptionsProperty where
  toJSON GuardianOptionsProperty {..}
    = JSON.object
        ["OptimizedSharedDelivery" JSON..= optimizedSharedDelivery]
instance Property "OptimizedSharedDelivery" GuardianOptionsProperty where
  type PropertyType "OptimizedSharedDelivery" GuardianOptionsProperty = Value Prelude.Text
  set newValue GuardianOptionsProperty {}
    = GuardianOptionsProperty {optimizedSharedDelivery = newValue, ..}