module Stratosphere.AppRunner.Service.InstanceConfigurationProperty (
        InstanceConfigurationProperty(..), mkInstanceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-instanceconfiguration.html>
    InstanceConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-instanceconfiguration.html#cfn-apprunner-service-instanceconfiguration-cpu>
                                   cpu :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-instanceconfiguration.html#cfn-apprunner-service-instanceconfiguration-instancerolearn>
                                   instanceRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-instanceconfiguration.html#cfn-apprunner-service-instanceconfiguration-memory>
                                   memory :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceConfigurationProperty :: InstanceConfigurationProperty
mkInstanceConfigurationProperty
  = InstanceConfigurationProperty
      {haddock_workaround_ = (), cpu = Prelude.Nothing,
       instanceRoleArn = Prelude.Nothing, memory = Prelude.Nothing}
instance ToResourceProperties InstanceConfigurationProperty where
  toResourceProperties InstanceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::Service.InstanceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Cpu" Prelude.<$> cpu,
                            (JSON..=) "InstanceRoleArn" Prelude.<$> instanceRoleArn,
                            (JSON..=) "Memory" Prelude.<$> memory])}
instance JSON.ToJSON InstanceConfigurationProperty where
  toJSON InstanceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Cpu" Prelude.<$> cpu,
               (JSON..=) "InstanceRoleArn" Prelude.<$> instanceRoleArn,
               (JSON..=) "Memory" Prelude.<$> memory]))
instance Property "Cpu" InstanceConfigurationProperty where
  type PropertyType "Cpu" InstanceConfigurationProperty = Value Prelude.Text
  set newValue InstanceConfigurationProperty {..}
    = InstanceConfigurationProperty {cpu = Prelude.pure newValue, ..}
instance Property "InstanceRoleArn" InstanceConfigurationProperty where
  type PropertyType "InstanceRoleArn" InstanceConfigurationProperty = Value Prelude.Text
  set newValue InstanceConfigurationProperty {..}
    = InstanceConfigurationProperty
        {instanceRoleArn = Prelude.pure newValue, ..}
instance Property "Memory" InstanceConfigurationProperty where
  type PropertyType "Memory" InstanceConfigurationProperty = Value Prelude.Text
  set newValue InstanceConfigurationProperty {..}
    = InstanceConfigurationProperty
        {memory = Prelude.pure newValue, ..}