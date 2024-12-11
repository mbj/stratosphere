module Stratosphere.ApplicationSignals.ServiceLevelObjective.BurnRateConfigurationProperty (
        BurnRateConfigurationProperty(..), mkBurnRateConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BurnRateConfigurationProperty
  = BurnRateConfigurationProperty {lookBackWindowMinutes :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBurnRateConfigurationProperty ::
  Value Prelude.Integer -> BurnRateConfigurationProperty
mkBurnRateConfigurationProperty lookBackWindowMinutes
  = BurnRateConfigurationProperty
      {lookBackWindowMinutes = lookBackWindowMinutes}
instance ToResourceProperties BurnRateConfigurationProperty where
  toResourceProperties BurnRateConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationSignals::ServiceLevelObjective.BurnRateConfiguration",
         supportsTags = Prelude.False,
         properties = ["LookBackWindowMinutes"
                         JSON..= lookBackWindowMinutes]}
instance JSON.ToJSON BurnRateConfigurationProperty where
  toJSON BurnRateConfigurationProperty {..}
    = JSON.object
        ["LookBackWindowMinutes" JSON..= lookBackWindowMinutes]
instance Property "LookBackWindowMinutes" BurnRateConfigurationProperty where
  type PropertyType "LookBackWindowMinutes" BurnRateConfigurationProperty = Value Prelude.Integer
  set newValue BurnRateConfigurationProperty {}
    = BurnRateConfigurationProperty
        {lookBackWindowMinutes = newValue, ..}