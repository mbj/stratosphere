module Stratosphere.Batch.JobDefinition.EksContainerVolumeMountProperty (
        EksContainerVolumeMountProperty(..),
        mkEksContainerVolumeMountProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EksContainerVolumeMountProperty
  = EksContainerVolumeMountProperty {mountPath :: (Prelude.Maybe (Value Prelude.Text)),
                                     name :: (Prelude.Maybe (Value Prelude.Text)),
                                     readOnly :: (Prelude.Maybe (Value Prelude.Bool))}
mkEksContainerVolumeMountProperty ::
  EksContainerVolumeMountProperty
mkEksContainerVolumeMountProperty
  = EksContainerVolumeMountProperty
      {mountPath = Prelude.Nothing, name = Prelude.Nothing,
       readOnly = Prelude.Nothing}
instance ToResourceProperties EksContainerVolumeMountProperty where
  toResourceProperties EksContainerVolumeMountProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EksContainerVolumeMount",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MountPath" Prelude.<$> mountPath,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "ReadOnly" Prelude.<$> readOnly])}
instance JSON.ToJSON EksContainerVolumeMountProperty where
  toJSON EksContainerVolumeMountProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MountPath" Prelude.<$> mountPath,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "ReadOnly" Prelude.<$> readOnly]))
instance Property "MountPath" EksContainerVolumeMountProperty where
  type PropertyType "MountPath" EksContainerVolumeMountProperty = Value Prelude.Text
  set newValue EksContainerVolumeMountProperty {..}
    = EksContainerVolumeMountProperty
        {mountPath = Prelude.pure newValue, ..}
instance Property "Name" EksContainerVolumeMountProperty where
  type PropertyType "Name" EksContainerVolumeMountProperty = Value Prelude.Text
  set newValue EksContainerVolumeMountProperty {..}
    = EksContainerVolumeMountProperty
        {name = Prelude.pure newValue, ..}
instance Property "ReadOnly" EksContainerVolumeMountProperty where
  type PropertyType "ReadOnly" EksContainerVolumeMountProperty = Value Prelude.Bool
  set newValue EksContainerVolumeMountProperty {..}
    = EksContainerVolumeMountProperty
        {readOnly = Prelude.pure newValue, ..}