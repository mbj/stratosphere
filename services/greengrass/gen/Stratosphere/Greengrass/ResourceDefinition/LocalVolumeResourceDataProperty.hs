module Stratosphere.Greengrass.ResourceDefinition.LocalVolumeResourceDataProperty (
        module Exports, LocalVolumeResourceDataProperty(..),
        mkLocalVolumeResourceDataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.ResourceDefinition.GroupOwnerSettingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LocalVolumeResourceDataProperty
  = LocalVolumeResourceDataProperty {destinationPath :: (Value Prelude.Text),
                                     groupOwnerSetting :: (Prelude.Maybe GroupOwnerSettingProperty),
                                     sourcePath :: (Value Prelude.Text)}
mkLocalVolumeResourceDataProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> LocalVolumeResourceDataProperty
mkLocalVolumeResourceDataProperty destinationPath sourcePath
  = LocalVolumeResourceDataProperty
      {destinationPath = destinationPath, sourcePath = sourcePath,
       groupOwnerSetting = Prelude.Nothing}
instance ToResourceProperties LocalVolumeResourceDataProperty where
  toResourceProperties LocalVolumeResourceDataProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::ResourceDefinition.LocalVolumeResourceData",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationPath" JSON..= destinationPath,
                            "SourcePath" JSON..= sourcePath]
                           (Prelude.catMaybes
                              [(JSON..=) "GroupOwnerSetting" Prelude.<$> groupOwnerSetting]))}
instance JSON.ToJSON LocalVolumeResourceDataProperty where
  toJSON LocalVolumeResourceDataProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationPath" JSON..= destinationPath,
               "SourcePath" JSON..= sourcePath]
              (Prelude.catMaybes
                 [(JSON..=) "GroupOwnerSetting" Prelude.<$> groupOwnerSetting])))
instance Property "DestinationPath" LocalVolumeResourceDataProperty where
  type PropertyType "DestinationPath" LocalVolumeResourceDataProperty = Value Prelude.Text
  set newValue LocalVolumeResourceDataProperty {..}
    = LocalVolumeResourceDataProperty {destinationPath = newValue, ..}
instance Property "GroupOwnerSetting" LocalVolumeResourceDataProperty where
  type PropertyType "GroupOwnerSetting" LocalVolumeResourceDataProperty = GroupOwnerSettingProperty
  set newValue LocalVolumeResourceDataProperty {..}
    = LocalVolumeResourceDataProperty
        {groupOwnerSetting = Prelude.pure newValue, ..}
instance Property "SourcePath" LocalVolumeResourceDataProperty where
  type PropertyType "SourcePath" LocalVolumeResourceDataProperty = Value Prelude.Text
  set newValue LocalVolumeResourceDataProperty {..}
    = LocalVolumeResourceDataProperty {sourcePath = newValue, ..}