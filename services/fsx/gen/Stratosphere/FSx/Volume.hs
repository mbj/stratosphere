module Stratosphere.FSx.Volume (
        module Exports, Volume(..), mkVolume
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.Volume.OntapConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.FSx.Volume.OpenZFSConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Volume
  = Volume {backupId :: (Prelude.Maybe (Value Prelude.Text)),
            name :: (Value Prelude.Text),
            ontapConfiguration :: (Prelude.Maybe OntapConfigurationProperty),
            openZFSConfiguration :: (Prelude.Maybe OpenZFSConfigurationProperty),
            tags :: (Prelude.Maybe [Tag]),
            volumeType :: (Prelude.Maybe (Value Prelude.Text))}
mkVolume :: Value Prelude.Text -> Volume
mkVolume name
  = Volume
      {name = name, backupId = Prelude.Nothing,
       ontapConfiguration = Prelude.Nothing,
       openZFSConfiguration = Prelude.Nothing, tags = Prelude.Nothing,
       volumeType = Prelude.Nothing}
instance ToResourceProperties Volume where
  toResourceProperties Volume {..}
    = ResourceProperties
        {awsType = "AWS::FSx::Volume", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "BackupId" Prelude.<$> backupId,
                               (JSON..=) "OntapConfiguration" Prelude.<$> ontapConfiguration,
                               (JSON..=) "OpenZFSConfiguration" Prelude.<$> openZFSConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VolumeType" Prelude.<$> volumeType]))}
instance JSON.ToJSON Volume where
  toJSON Volume {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "BackupId" Prelude.<$> backupId,
                  (JSON..=) "OntapConfiguration" Prelude.<$> ontapConfiguration,
                  (JSON..=) "OpenZFSConfiguration" Prelude.<$> openZFSConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VolumeType" Prelude.<$> volumeType])))
instance Property "BackupId" Volume where
  type PropertyType "BackupId" Volume = Value Prelude.Text
  set newValue Volume {..}
    = Volume {backupId = Prelude.pure newValue, ..}
instance Property "Name" Volume where
  type PropertyType "Name" Volume = Value Prelude.Text
  set newValue Volume {..} = Volume {name = newValue, ..}
instance Property "OntapConfiguration" Volume where
  type PropertyType "OntapConfiguration" Volume = OntapConfigurationProperty
  set newValue Volume {..}
    = Volume {ontapConfiguration = Prelude.pure newValue, ..}
instance Property "OpenZFSConfiguration" Volume where
  type PropertyType "OpenZFSConfiguration" Volume = OpenZFSConfigurationProperty
  set newValue Volume {..}
    = Volume {openZFSConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" Volume where
  type PropertyType "Tags" Volume = [Tag]
  set newValue Volume {..}
    = Volume {tags = Prelude.pure newValue, ..}
instance Property "VolumeType" Volume where
  type PropertyType "VolumeType" Volume = Value Prelude.Text
  set newValue Volume {..}
    = Volume {volumeType = Prelude.pure newValue, ..}