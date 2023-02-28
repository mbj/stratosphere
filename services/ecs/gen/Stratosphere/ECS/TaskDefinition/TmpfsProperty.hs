module Stratosphere.ECS.TaskDefinition.TmpfsProperty (
        TmpfsProperty(..), mkTmpfsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TmpfsProperty
  = TmpfsProperty {containerPath :: (Prelude.Maybe (Value Prelude.Text)),
                   mountOptions :: (Prelude.Maybe (ValueList Prelude.Text)),
                   size :: (Value Prelude.Integer)}
mkTmpfsProperty :: Value Prelude.Integer -> TmpfsProperty
mkTmpfsProperty size
  = TmpfsProperty
      {size = size, containerPath = Prelude.Nothing,
       mountOptions = Prelude.Nothing}
instance ToResourceProperties TmpfsProperty where
  toResourceProperties TmpfsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.Tmpfs",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Size" JSON..= size]
                           (Prelude.catMaybes
                              [(JSON..=) "ContainerPath" Prelude.<$> containerPath,
                               (JSON..=) "MountOptions" Prelude.<$> mountOptions]))}
instance JSON.ToJSON TmpfsProperty where
  toJSON TmpfsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Size" JSON..= size]
              (Prelude.catMaybes
                 [(JSON..=) "ContainerPath" Prelude.<$> containerPath,
                  (JSON..=) "MountOptions" Prelude.<$> mountOptions])))
instance Property "ContainerPath" TmpfsProperty where
  type PropertyType "ContainerPath" TmpfsProperty = Value Prelude.Text
  set newValue TmpfsProperty {..}
    = TmpfsProperty {containerPath = Prelude.pure newValue, ..}
instance Property "MountOptions" TmpfsProperty where
  type PropertyType "MountOptions" TmpfsProperty = ValueList Prelude.Text
  set newValue TmpfsProperty {..}
    = TmpfsProperty {mountOptions = Prelude.pure newValue, ..}
instance Property "Size" TmpfsProperty where
  type PropertyType "Size" TmpfsProperty = Value Prelude.Integer
  set newValue TmpfsProperty {..}
    = TmpfsProperty {size = newValue, ..}