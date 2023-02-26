module Stratosphere.ECS.TaskDefinition.KernelCapabilitiesProperty (
        KernelCapabilitiesProperty(..), mkKernelCapabilitiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KernelCapabilitiesProperty
  = KernelCapabilitiesProperty {add :: (Prelude.Maybe (ValueList Prelude.Text)),
                                drop :: (Prelude.Maybe (ValueList Prelude.Text))}
mkKernelCapabilitiesProperty :: KernelCapabilitiesProperty
mkKernelCapabilitiesProperty
  = KernelCapabilitiesProperty
      {add = Prelude.Nothing, drop = Prelude.Nothing}
instance ToResourceProperties KernelCapabilitiesProperty where
  toResourceProperties KernelCapabilitiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.KernelCapabilities",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Add" Prelude.<$> add,
                            (JSON..=) "Drop" Prelude.<$> drop])}
instance JSON.ToJSON KernelCapabilitiesProperty where
  toJSON KernelCapabilitiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Add" Prelude.<$> add,
               (JSON..=) "Drop" Prelude.<$> drop]))
instance Property "Add" KernelCapabilitiesProperty where
  type PropertyType "Add" KernelCapabilitiesProperty = ValueList Prelude.Text
  set newValue KernelCapabilitiesProperty {..}
    = KernelCapabilitiesProperty {add = Prelude.pure newValue, ..}
instance Property "Drop" KernelCapabilitiesProperty where
  type PropertyType "Drop" KernelCapabilitiesProperty = ValueList Prelude.Text
  set newValue KernelCapabilitiesProperty {..}
    = KernelCapabilitiesProperty {drop = Prelude.pure newValue, ..}