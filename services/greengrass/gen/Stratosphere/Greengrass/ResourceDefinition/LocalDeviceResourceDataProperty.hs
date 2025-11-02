module Stratosphere.Greengrass.ResourceDefinition.LocalDeviceResourceDataProperty (
        module Exports, LocalDeviceResourceDataProperty(..),
        mkLocalDeviceResourceDataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.ResourceDefinition.GroupOwnerSettingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LocalDeviceResourceDataProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localdeviceresourcedata.html>
    LocalDeviceResourceDataProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localdeviceresourcedata.html#cfn-greengrass-resourcedefinition-localdeviceresourcedata-groupownersetting>
                                     groupOwnerSetting :: (Prelude.Maybe GroupOwnerSettingProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localdeviceresourcedata.html#cfn-greengrass-resourcedefinition-localdeviceresourcedata-sourcepath>
                                     sourcePath :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocalDeviceResourceDataProperty ::
  Value Prelude.Text -> LocalDeviceResourceDataProperty
mkLocalDeviceResourceDataProperty sourcePath
  = LocalDeviceResourceDataProperty
      {haddock_workaround_ = (), sourcePath = sourcePath,
       groupOwnerSetting = Prelude.Nothing}
instance ToResourceProperties LocalDeviceResourceDataProperty where
  toResourceProperties LocalDeviceResourceDataProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::ResourceDefinition.LocalDeviceResourceData",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SourcePath" JSON..= sourcePath]
                           (Prelude.catMaybes
                              [(JSON..=) "GroupOwnerSetting" Prelude.<$> groupOwnerSetting]))}
instance JSON.ToJSON LocalDeviceResourceDataProperty where
  toJSON LocalDeviceResourceDataProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SourcePath" JSON..= sourcePath]
              (Prelude.catMaybes
                 [(JSON..=) "GroupOwnerSetting" Prelude.<$> groupOwnerSetting])))
instance Property "GroupOwnerSetting" LocalDeviceResourceDataProperty where
  type PropertyType "GroupOwnerSetting" LocalDeviceResourceDataProperty = GroupOwnerSettingProperty
  set newValue LocalDeviceResourceDataProperty {..}
    = LocalDeviceResourceDataProperty
        {groupOwnerSetting = Prelude.pure newValue, ..}
instance Property "SourcePath" LocalDeviceResourceDataProperty where
  type PropertyType "SourcePath" LocalDeviceResourceDataProperty = Value Prelude.Text
  set newValue LocalDeviceResourceDataProperty {..}
    = LocalDeviceResourceDataProperty {sourcePath = newValue, ..}