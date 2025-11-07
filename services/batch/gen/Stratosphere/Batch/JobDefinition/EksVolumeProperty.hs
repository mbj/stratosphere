module Stratosphere.Batch.JobDefinition.EksVolumeProperty (
        module Exports, EksVolumeProperty(..), mkEksVolumeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EksEmptyDirProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EksHostPathProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EksPersistentVolumeClaimProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EksSecretProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EksVolumeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-eksvolume.html>
    EksVolumeProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-eksvolume.html#cfn-batch-jobdefinition-eksvolume-emptydir>
                       emptyDir :: (Prelude.Maybe EksEmptyDirProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-eksvolume.html#cfn-batch-jobdefinition-eksvolume-hostpath>
                       hostPath :: (Prelude.Maybe EksHostPathProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-eksvolume.html#cfn-batch-jobdefinition-eksvolume-name>
                       name :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-eksvolume.html#cfn-batch-jobdefinition-eksvolume-persistentvolumeclaim>
                       persistentVolumeClaim :: (Prelude.Maybe EksPersistentVolumeClaimProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-eksvolume.html#cfn-batch-jobdefinition-eksvolume-secret>
                       secret :: (Prelude.Maybe EksSecretProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEksVolumeProperty :: Value Prelude.Text -> EksVolumeProperty
mkEksVolumeProperty name
  = EksVolumeProperty
      {haddock_workaround_ = (), name = name, emptyDir = Prelude.Nothing,
       hostPath = Prelude.Nothing,
       persistentVolumeClaim = Prelude.Nothing, secret = Prelude.Nothing}
instance ToResourceProperties EksVolumeProperty where
  toResourceProperties EksVolumeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EksVolume",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "EmptyDir" Prelude.<$> emptyDir,
                               (JSON..=) "HostPath" Prelude.<$> hostPath,
                               (JSON..=) "PersistentVolumeClaim"
                                 Prelude.<$> persistentVolumeClaim,
                               (JSON..=) "Secret" Prelude.<$> secret]))}
instance JSON.ToJSON EksVolumeProperty where
  toJSON EksVolumeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "EmptyDir" Prelude.<$> emptyDir,
                  (JSON..=) "HostPath" Prelude.<$> hostPath,
                  (JSON..=) "PersistentVolumeClaim"
                    Prelude.<$> persistentVolumeClaim,
                  (JSON..=) "Secret" Prelude.<$> secret])))
instance Property "EmptyDir" EksVolumeProperty where
  type PropertyType "EmptyDir" EksVolumeProperty = EksEmptyDirProperty
  set newValue EksVolumeProperty {..}
    = EksVolumeProperty {emptyDir = Prelude.pure newValue, ..}
instance Property "HostPath" EksVolumeProperty where
  type PropertyType "HostPath" EksVolumeProperty = EksHostPathProperty
  set newValue EksVolumeProperty {..}
    = EksVolumeProperty {hostPath = Prelude.pure newValue, ..}
instance Property "Name" EksVolumeProperty where
  type PropertyType "Name" EksVolumeProperty = Value Prelude.Text
  set newValue EksVolumeProperty {..}
    = EksVolumeProperty {name = newValue, ..}
instance Property "PersistentVolumeClaim" EksVolumeProperty where
  type PropertyType "PersistentVolumeClaim" EksVolumeProperty = EksPersistentVolumeClaimProperty
  set newValue EksVolumeProperty {..}
    = EksVolumeProperty
        {persistentVolumeClaim = Prelude.pure newValue, ..}
instance Property "Secret" EksVolumeProperty where
  type PropertyType "Secret" EksVolumeProperty = EksSecretProperty
  set newValue EksVolumeProperty {..}
    = EksVolumeProperty {secret = Prelude.pure newValue, ..}