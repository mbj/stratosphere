module Stratosphere.Glue.TableOptimizer.TableOptimizerConfigurationProperty (
        TableOptimizerConfigurationProperty(..),
        mkTableOptimizerConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableOptimizerConfigurationProperty
  = TableOptimizerConfigurationProperty {enabled :: (Value Prelude.Bool),
                                         roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableOptimizerConfigurationProperty ::
  Value Prelude.Bool
  -> Value Prelude.Text -> TableOptimizerConfigurationProperty
mkTableOptimizerConfigurationProperty enabled roleArn
  = TableOptimizerConfigurationProperty
      {enabled = enabled, roleArn = roleArn}
instance ToResourceProperties TableOptimizerConfigurationProperty where
  toResourceProperties TableOptimizerConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::TableOptimizer.TableOptimizerConfiguration",
         supportsTags = Prelude.False,
         properties = ["Enabled" JSON..= enabled,
                       "RoleArn" JSON..= roleArn]}
instance JSON.ToJSON TableOptimizerConfigurationProperty where
  toJSON TableOptimizerConfigurationProperty {..}
    = JSON.object
        ["Enabled" JSON..= enabled, "RoleArn" JSON..= roleArn]
instance Property "Enabled" TableOptimizerConfigurationProperty where
  type PropertyType "Enabled" TableOptimizerConfigurationProperty = Value Prelude.Bool
  set newValue TableOptimizerConfigurationProperty {..}
    = TableOptimizerConfigurationProperty {enabled = newValue, ..}
instance Property "RoleArn" TableOptimizerConfigurationProperty where
  type PropertyType "RoleArn" TableOptimizerConfigurationProperty = Value Prelude.Text
  set newValue TableOptimizerConfigurationProperty {..}
    = TableOptimizerConfigurationProperty {roleArn = newValue, ..}