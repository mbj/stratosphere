module Stratosphere.AppRunner.Service.InstanceConfigurationProperty (
        InstanceConfigurationProperty(..), mkInstanceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceConfigurationProperty
  = InstanceConfigurationProperty {cpu :: (Prelude.Maybe (Value Prelude.Text)),
                                   instanceRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                   memory :: (Prelude.Maybe (Value Prelude.Text))}
mkInstanceConfigurationProperty :: InstanceConfigurationProperty
mkInstanceConfigurationProperty
  = InstanceConfigurationProperty
      {cpu = Prelude.Nothing, instanceRoleArn = Prelude.Nothing,
       memory = Prelude.Nothing}
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