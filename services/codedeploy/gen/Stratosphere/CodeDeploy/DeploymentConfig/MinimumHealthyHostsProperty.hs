module Stratosphere.CodeDeploy.DeploymentConfig.MinimumHealthyHostsProperty (
        MinimumHealthyHostsProperty(..), mkMinimumHealthyHostsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MinimumHealthyHostsProperty
  = MinimumHealthyHostsProperty {type' :: (Value Prelude.Text),
                                 value :: (Value Prelude.Integer)}
mkMinimumHealthyHostsProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> MinimumHealthyHostsProperty
mkMinimumHealthyHostsProperty type' value
  = MinimumHealthyHostsProperty {type' = type', value = value}
instance ToResourceProperties MinimumHealthyHostsProperty where
  toResourceProperties MinimumHealthyHostsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentConfig.MinimumHealthyHosts",
         supportsTags = Prelude.False,
         properties = ["Type" JSON..= type', "Value" JSON..= value]}
instance JSON.ToJSON MinimumHealthyHostsProperty where
  toJSON MinimumHealthyHostsProperty {..}
    = JSON.object ["Type" JSON..= type', "Value" JSON..= value]
instance Property "Type" MinimumHealthyHostsProperty where
  type PropertyType "Type" MinimumHealthyHostsProperty = Value Prelude.Text
  set newValue MinimumHealthyHostsProperty {..}
    = MinimumHealthyHostsProperty {type' = newValue, ..}
instance Property "Value" MinimumHealthyHostsProperty where
  type PropertyType "Value" MinimumHealthyHostsProperty = Value Prelude.Integer
  set newValue MinimumHealthyHostsProperty {..}
    = MinimumHealthyHostsProperty {value = newValue, ..}