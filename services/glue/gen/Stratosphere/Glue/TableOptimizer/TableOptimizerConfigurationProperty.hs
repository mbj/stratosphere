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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-tableoptimizerconfiguration.html>
    TableOptimizerConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-tableoptimizerconfiguration.html#cfn-glue-tableoptimizer-tableoptimizerconfiguration-enabled>
                                         enabled :: (Value Prelude.Bool),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-tableoptimizerconfiguration.html#cfn-glue-tableoptimizer-tableoptimizerconfiguration-rolearn>
                                         roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableOptimizerConfigurationProperty ::
  Value Prelude.Bool
  -> Value Prelude.Text -> TableOptimizerConfigurationProperty
mkTableOptimizerConfigurationProperty enabled roleArn
  = TableOptimizerConfigurationProperty
      {haddock_workaround_ = (), enabled = enabled, roleArn = roleArn}
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