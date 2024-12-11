module Stratosphere.CodeBuild.Fleet.ComputeConfigurationProperty (
        ComputeConfigurationProperty(..), mkComputeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComputeConfigurationProperty
  = ComputeConfigurationProperty {disk :: (Prelude.Maybe (Value Prelude.Integer)),
                                  machineType :: (Prelude.Maybe (Value Prelude.Text)),
                                  memory :: (Prelude.Maybe (Value Prelude.Integer)),
                                  vCpu :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComputeConfigurationProperty :: ComputeConfigurationProperty
mkComputeConfigurationProperty
  = ComputeConfigurationProperty
      {disk = Prelude.Nothing, machineType = Prelude.Nothing,
       memory = Prelude.Nothing, vCpu = Prelude.Nothing}
instance ToResourceProperties ComputeConfigurationProperty where
  toResourceProperties ComputeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Fleet.ComputeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "disk" Prelude.<$> disk,
                            (JSON..=) "machineType" Prelude.<$> machineType,
                            (JSON..=) "memory" Prelude.<$> memory,
                            (JSON..=) "vCpu" Prelude.<$> vCpu])}
instance JSON.ToJSON ComputeConfigurationProperty where
  toJSON ComputeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "disk" Prelude.<$> disk,
               (JSON..=) "machineType" Prelude.<$> machineType,
               (JSON..=) "memory" Prelude.<$> memory,
               (JSON..=) "vCpu" Prelude.<$> vCpu]))
instance Property "disk" ComputeConfigurationProperty where
  type PropertyType "disk" ComputeConfigurationProperty = Value Prelude.Integer
  set newValue ComputeConfigurationProperty {..}
    = ComputeConfigurationProperty {disk = Prelude.pure newValue, ..}
instance Property "machineType" ComputeConfigurationProperty where
  type PropertyType "machineType" ComputeConfigurationProperty = Value Prelude.Text
  set newValue ComputeConfigurationProperty {..}
    = ComputeConfigurationProperty
        {machineType = Prelude.pure newValue, ..}
instance Property "memory" ComputeConfigurationProperty where
  type PropertyType "memory" ComputeConfigurationProperty = Value Prelude.Integer
  set newValue ComputeConfigurationProperty {..}
    = ComputeConfigurationProperty {memory = Prelude.pure newValue, ..}
instance Property "vCpu" ComputeConfigurationProperty where
  type PropertyType "vCpu" ComputeConfigurationProperty = Value Prelude.Integer
  set newValue ComputeConfigurationProperty {..}
    = ComputeConfigurationProperty {vCpu = Prelude.pure newValue, ..}