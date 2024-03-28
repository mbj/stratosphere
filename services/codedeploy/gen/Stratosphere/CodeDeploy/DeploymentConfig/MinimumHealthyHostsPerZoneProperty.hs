module Stratosphere.CodeDeploy.DeploymentConfig.MinimumHealthyHostsPerZoneProperty (
        MinimumHealthyHostsPerZoneProperty(..),
        mkMinimumHealthyHostsPerZoneProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MinimumHealthyHostsPerZoneProperty
  = MinimumHealthyHostsPerZoneProperty {type' :: (Value Prelude.Text),
                                        value :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMinimumHealthyHostsPerZoneProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> MinimumHealthyHostsPerZoneProperty
mkMinimumHealthyHostsPerZoneProperty type' value
  = MinimumHealthyHostsPerZoneProperty {type' = type', value = value}
instance ToResourceProperties MinimumHealthyHostsPerZoneProperty where
  toResourceProperties MinimumHealthyHostsPerZoneProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentConfig.MinimumHealthyHostsPerZone",
         supportsTags = Prelude.False,
         properties = ["Type" JSON..= type', "Value" JSON..= value]}
instance JSON.ToJSON MinimumHealthyHostsPerZoneProperty where
  toJSON MinimumHealthyHostsPerZoneProperty {..}
    = JSON.object ["Type" JSON..= type', "Value" JSON..= value]
instance Property "Type" MinimumHealthyHostsPerZoneProperty where
  type PropertyType "Type" MinimumHealthyHostsPerZoneProperty = Value Prelude.Text
  set newValue MinimumHealthyHostsPerZoneProperty {..}
    = MinimumHealthyHostsPerZoneProperty {type' = newValue, ..}
instance Property "Value" MinimumHealthyHostsPerZoneProperty where
  type PropertyType "Value" MinimumHealthyHostsPerZoneProperty = Value Prelude.Integer
  set newValue MinimumHealthyHostsPerZoneProperty {..}
    = MinimumHealthyHostsPerZoneProperty {value = newValue, ..}