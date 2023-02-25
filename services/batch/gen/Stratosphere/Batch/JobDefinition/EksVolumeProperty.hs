module Stratosphere.Batch.JobDefinition.EksVolumeProperty (
        module Exports, EksVolumeProperty(..), mkEksVolumeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EmptyDirProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.HostPathProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.SecretProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EksVolumeProperty
  = EksVolumeProperty {emptyDir :: (Prelude.Maybe EmptyDirProperty),
                       hostPath :: (Prelude.Maybe HostPathProperty),
                       name :: (Value Prelude.Text),
                       secret :: (Prelude.Maybe SecretProperty)}
mkEksVolumeProperty :: Value Prelude.Text -> EksVolumeProperty
mkEksVolumeProperty name
  = EksVolumeProperty
      {name = name, emptyDir = Prelude.Nothing,
       hostPath = Prelude.Nothing, secret = Prelude.Nothing}
instance ToResourceProperties EksVolumeProperty where
  toResourceProperties EksVolumeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EksVolume",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "EmptyDir" Prelude.<$> emptyDir,
                               (JSON..=) "HostPath" Prelude.<$> hostPath,
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
                  (JSON..=) "Secret" Prelude.<$> secret])))
instance Property "EmptyDir" EksVolumeProperty where
  type PropertyType "EmptyDir" EksVolumeProperty = EmptyDirProperty
  set newValue EksVolumeProperty {..}
    = EksVolumeProperty {emptyDir = Prelude.pure newValue, ..}
instance Property "HostPath" EksVolumeProperty where
  type PropertyType "HostPath" EksVolumeProperty = HostPathProperty
  set newValue EksVolumeProperty {..}
    = EksVolumeProperty {hostPath = Prelude.pure newValue, ..}
instance Property "Name" EksVolumeProperty where
  type PropertyType "Name" EksVolumeProperty = Value Prelude.Text
  set newValue EksVolumeProperty {..}
    = EksVolumeProperty {name = newValue, ..}
instance Property "Secret" EksVolumeProperty where
  type PropertyType "Secret" EksVolumeProperty = SecretProperty
  set newValue EksVolumeProperty {..}
    = EksVolumeProperty {secret = Prelude.pure newValue, ..}