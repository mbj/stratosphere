module Stratosphere.Greengrass.ResourceDefinitionVersion.LocalVolumeResourceDataProperty (
        module Exports, LocalVolumeResourceDataProperty(..),
        mkLocalVolumeResourceDataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.ResourceDefinitionVersion.GroupOwnerSettingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LocalVolumeResourceDataProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localvolumeresourcedata.html>
    LocalVolumeResourceDataProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localvolumeresourcedata.html#cfn-greengrass-resourcedefinitionversion-localvolumeresourcedata-destinationpath>
                                     destinationPath :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localvolumeresourcedata.html#cfn-greengrass-resourcedefinitionversion-localvolumeresourcedata-groupownersetting>
                                     groupOwnerSetting :: (Prelude.Maybe GroupOwnerSettingProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localvolumeresourcedata.html#cfn-greengrass-resourcedefinitionversion-localvolumeresourcedata-sourcepath>
                                     sourcePath :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocalVolumeResourceDataProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> LocalVolumeResourceDataProperty
mkLocalVolumeResourceDataProperty destinationPath sourcePath
  = LocalVolumeResourceDataProperty
      {haddock_workaround_ = (), destinationPath = destinationPath,
       sourcePath = sourcePath, groupOwnerSetting = Prelude.Nothing}
instance ToResourceProperties LocalVolumeResourceDataProperty where
  toResourceProperties LocalVolumeResourceDataProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::ResourceDefinitionVersion.LocalVolumeResourceData",
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