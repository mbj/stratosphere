module Stratosphere.PinpointEmail.ConfigurationSet.ReputationOptionsProperty (
        ReputationOptionsProperty(..), mkReputationOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReputationOptionsProperty
  = ReputationOptionsProperty {reputationMetricsEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
mkReputationOptionsProperty :: ReputationOptionsProperty
mkReputationOptionsProperty
  = ReputationOptionsProperty
      {reputationMetricsEnabled = Prelude.Nothing}
instance ToResourceProperties ReputationOptionsProperty where
  toResourceProperties ReputationOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::PinpointEmail::ConfigurationSet.ReputationOptions",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ReputationMetricsEnabled"
                              Prelude.<$> reputationMetricsEnabled])}
instance JSON.ToJSON ReputationOptionsProperty where
  toJSON ReputationOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ReputationMetricsEnabled"
                 Prelude.<$> reputationMetricsEnabled]))
instance Property "ReputationMetricsEnabled" ReputationOptionsProperty where
  type PropertyType "ReputationMetricsEnabled" ReputationOptionsProperty = Value Prelude.Bool
  set newValue ReputationOptionsProperty {}
    = ReputationOptionsProperty
        {reputationMetricsEnabled = Prelude.pure newValue, ..}