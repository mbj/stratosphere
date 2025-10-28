module Stratosphere.ECS.TaskDefinition.KernelCapabilitiesProperty (
        KernelCapabilitiesProperty(..), mkKernelCapabilitiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KernelCapabilitiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-kernelcapabilities.html>
    KernelCapabilitiesProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-kernelcapabilities.html#cfn-ecs-taskdefinition-kernelcapabilities-add>
                                add :: (Prelude.Maybe (ValueList Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-kernelcapabilities.html#cfn-ecs-taskdefinition-kernelcapabilities-drop>
                                drop :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKernelCapabilitiesProperty :: KernelCapabilitiesProperty
mkKernelCapabilitiesProperty
  = KernelCapabilitiesProperty
      {haddock_workaround_ = (), add = Prelude.Nothing,
       drop = Prelude.Nothing}
instance ToResourceProperties KernelCapabilitiesProperty where
  toResourceProperties KernelCapabilitiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.KernelCapabilities",
         supportsTags = Prelude.False,
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