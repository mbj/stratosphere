module Stratosphere.EMRServerless.Application.WorkerConfigurationProperty (
        WorkerConfigurationProperty(..), mkWorkerConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkerConfigurationProperty
  = WorkerConfigurationProperty {cpu :: (Value Prelude.Text),
                                 disk :: (Prelude.Maybe (Value Prelude.Text)),
                                 diskType :: (Prelude.Maybe (Value Prelude.Text)),
                                 memory :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkerConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> WorkerConfigurationProperty
mkWorkerConfigurationProperty cpu memory
  = WorkerConfigurationProperty
      {cpu = cpu, memory = memory, disk = Prelude.Nothing,
       diskType = Prelude.Nothing}
instance ToResourceProperties WorkerConfigurationProperty where
  toResourceProperties WorkerConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application.WorkerConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Cpu" JSON..= cpu, "Memory" JSON..= memory]
                           (Prelude.catMaybes
                              [(JSON..=) "Disk" Prelude.<$> disk,
                               (JSON..=) "DiskType" Prelude.<$> diskType]))}
instance JSON.ToJSON WorkerConfigurationProperty where
  toJSON WorkerConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Cpu" JSON..= cpu, "Memory" JSON..= memory]
              (Prelude.catMaybes
                 [(JSON..=) "Disk" Prelude.<$> disk,
                  (JSON..=) "DiskType" Prelude.<$> diskType])))
instance Property "Cpu" WorkerConfigurationProperty where
  type PropertyType "Cpu" WorkerConfigurationProperty = Value Prelude.Text
  set newValue WorkerConfigurationProperty {..}
    = WorkerConfigurationProperty {cpu = newValue, ..}
instance Property "Disk" WorkerConfigurationProperty where
  type PropertyType "Disk" WorkerConfigurationProperty = Value Prelude.Text
  set newValue WorkerConfigurationProperty {..}
    = WorkerConfigurationProperty {disk = Prelude.pure newValue, ..}
instance Property "DiskType" WorkerConfigurationProperty where
  type PropertyType "DiskType" WorkerConfigurationProperty = Value Prelude.Text
  set newValue WorkerConfigurationProperty {..}
    = WorkerConfigurationProperty
        {diskType = Prelude.pure newValue, ..}
instance Property "Memory" WorkerConfigurationProperty where
  type PropertyType "Memory" WorkerConfigurationProperty = Value Prelude.Text
  set newValue WorkerConfigurationProperty {..}
    = WorkerConfigurationProperty {memory = newValue, ..}