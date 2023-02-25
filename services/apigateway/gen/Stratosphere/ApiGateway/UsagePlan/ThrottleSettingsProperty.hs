module Stratosphere.ApiGateway.UsagePlan.ThrottleSettingsProperty (
        ThrottleSettingsProperty(..), mkThrottleSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ThrottleSettingsProperty
  = ThrottleSettingsProperty {burstLimit :: (Prelude.Maybe (Value Prelude.Integer)),
                              rateLimit :: (Prelude.Maybe (Value Prelude.Double))}
mkThrottleSettingsProperty :: ThrottleSettingsProperty
mkThrottleSettingsProperty
  = ThrottleSettingsProperty
      {burstLimit = Prelude.Nothing, rateLimit = Prelude.Nothing}
instance ToResourceProperties ThrottleSettingsProperty where
  toResourceProperties ThrottleSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::UsagePlan.ThrottleSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BurstLimit" Prelude.<$> burstLimit,
                            (JSON..=) "RateLimit" Prelude.<$> rateLimit])}
instance JSON.ToJSON ThrottleSettingsProperty where
  toJSON ThrottleSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BurstLimit" Prelude.<$> burstLimit,
               (JSON..=) "RateLimit" Prelude.<$> rateLimit]))
instance Property "BurstLimit" ThrottleSettingsProperty where
  type PropertyType "BurstLimit" ThrottleSettingsProperty = Value Prelude.Integer
  set newValue ThrottleSettingsProperty {..}
    = ThrottleSettingsProperty {burstLimit = Prelude.pure newValue, ..}
instance Property "RateLimit" ThrottleSettingsProperty where
  type PropertyType "RateLimit" ThrottleSettingsProperty = Value Prelude.Double
  set newValue ThrottleSettingsProperty {..}
    = ThrottleSettingsProperty {rateLimit = Prelude.pure newValue, ..}