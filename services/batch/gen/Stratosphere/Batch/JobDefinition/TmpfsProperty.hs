module Stratosphere.Batch.JobDefinition.TmpfsProperty (
        TmpfsProperty(..), mkTmpfsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TmpfsProperty
  = TmpfsProperty {containerPath :: (Value Prelude.Text),
                   mountOptions :: (Prelude.Maybe (ValueList Prelude.Text)),
                   size :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTmpfsProperty ::
  Value Prelude.Text -> Value Prelude.Integer -> TmpfsProperty
mkTmpfsProperty containerPath size
  = TmpfsProperty
      {containerPath = containerPath, size = size,
       mountOptions = Prelude.Nothing}
instance ToResourceProperties TmpfsProperty where
  toResourceProperties TmpfsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.Tmpfs",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ContainerPath" JSON..= containerPath, "Size" JSON..= size]
                           (Prelude.catMaybes
                              [(JSON..=) "MountOptions" Prelude.<$> mountOptions]))}
instance JSON.ToJSON TmpfsProperty where
  toJSON TmpfsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ContainerPath" JSON..= containerPath, "Size" JSON..= size]
              (Prelude.catMaybes
                 [(JSON..=) "MountOptions" Prelude.<$> mountOptions])))
instance Property "ContainerPath" TmpfsProperty where
  type PropertyType "ContainerPath" TmpfsProperty = Value Prelude.Text
  set newValue TmpfsProperty {..}
    = TmpfsProperty {containerPath = newValue, ..}
instance Property "MountOptions" TmpfsProperty where
  type PropertyType "MountOptions" TmpfsProperty = ValueList Prelude.Text
  set newValue TmpfsProperty {..}
    = TmpfsProperty {mountOptions = Prelude.pure newValue, ..}
instance Property "Size" TmpfsProperty where
  type PropertyType "Size" TmpfsProperty = Value Prelude.Integer
  set newValue TmpfsProperty {..}
    = TmpfsProperty {size = newValue, ..}