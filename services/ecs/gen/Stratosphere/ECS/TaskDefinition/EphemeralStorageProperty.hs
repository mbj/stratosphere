module Stratosphere.ECS.TaskDefinition.EphemeralStorageProperty (
        EphemeralStorageProperty(..), mkEphemeralStorageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EphemeralStorageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-ephemeralstorage.html>
    EphemeralStorageProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-ephemeralstorage.html#cfn-ecs-taskdefinition-ephemeralstorage-sizeingib>
                              sizeInGiB :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEphemeralStorageProperty :: EphemeralStorageProperty
mkEphemeralStorageProperty
  = EphemeralStorageProperty
      {haddock_workaround_ = (), sizeInGiB = Prelude.Nothing}
instance ToResourceProperties EphemeralStorageProperty where
  toResourceProperties EphemeralStorageProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.EphemeralStorage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "SizeInGiB" Prelude.<$> sizeInGiB])}
instance JSON.ToJSON EphemeralStorageProperty where
  toJSON EphemeralStorageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "SizeInGiB" Prelude.<$> sizeInGiB]))
instance Property "SizeInGiB" EphemeralStorageProperty where
  type PropertyType "SizeInGiB" EphemeralStorageProperty = Value Prelude.Integer
  set newValue EphemeralStorageProperty {..}
    = EphemeralStorageProperty {sizeInGiB = Prelude.pure newValue, ..}