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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekscontainervolumemount.html>
    EksContainerVolumeMountProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekscontainervolumemount.html#cfn-batch-jobdefinition-ekscontainervolumemount-mountpath>
                                     mountPath :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekscontainervolumemount.html#cfn-batch-jobdefinition-ekscontainervolumemount-name>
                                     name :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekscontainervolumemount.html#cfn-batch-jobdefinition-ekscontainervolumemount-readonly>
                                     readOnly :: (Prelude.Maybe (Value Prelude.Bool)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekscontainervolumemount.html#cfn-batch-jobdefinition-ekscontainervolumemount-subpath>
                                     subPath :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEksContainerVolumeMountProperty ::
  EksContainerVolumeMountProperty
mkEksContainerVolumeMountProperty
  = EksContainerVolumeMountProperty
      {haddock_workaround_ = (), mountPath = Prelude.Nothing,
       name = Prelude.Nothing, readOnly = Prelude.Nothing,
       subPath = Prelude.Nothing}
instance ToResourceProperties EksContainerVolumeMountProperty where
  toResourceProperties EksContainerVolumeMountProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EksContainerVolumeMount",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MountPath" Prelude.<$> mountPath,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "ReadOnly" Prelude.<$> readOnly,
                            (JSON..=) "SubPath" Prelude.<$> subPath])}
instance JSON.ToJSON EksContainerVolumeMountProperty where
  toJSON EksContainerVolumeMountProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MountPath" Prelude.<$> mountPath,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "ReadOnly" Prelude.<$> readOnly,
               (JSON..=) "SubPath" Prelude.<$> subPath]))
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
instance Property "SubPath" EksContainerVolumeMountProperty where
  type PropertyType "SubPath" EksContainerVolumeMountProperty = Value Prelude.Text
  set newValue EksContainerVolumeMountProperty {..}
    = EksContainerVolumeMountProperty
        {subPath = Prelude.pure newValue, ..}