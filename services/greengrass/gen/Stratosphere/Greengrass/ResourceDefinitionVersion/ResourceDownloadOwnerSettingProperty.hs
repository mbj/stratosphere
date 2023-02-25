module Stratosphere.Greengrass.ResourceDefinitionVersion.ResourceDownloadOwnerSettingProperty (
        ResourceDownloadOwnerSettingProperty(..),
        mkResourceDownloadOwnerSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceDownloadOwnerSettingProperty
  = ResourceDownloadOwnerSettingProperty {groupOwner :: (Value Prelude.Text),
                                          groupPermission :: (Value Prelude.Text)}
mkResourceDownloadOwnerSettingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ResourceDownloadOwnerSettingProperty
mkResourceDownloadOwnerSettingProperty groupOwner groupPermission
  = ResourceDownloadOwnerSettingProperty
      {groupOwner = groupOwner, groupPermission = groupPermission}
instance ToResourceProperties ResourceDownloadOwnerSettingProperty where
  toResourceProperties ResourceDownloadOwnerSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::ResourceDefinitionVersion.ResourceDownloadOwnerSetting",
         properties = ["GroupOwner" JSON..= groupOwner,
                       "GroupPermission" JSON..= groupPermission]}
instance JSON.ToJSON ResourceDownloadOwnerSettingProperty where
  toJSON ResourceDownloadOwnerSettingProperty {..}
    = JSON.object
        ["GroupOwner" JSON..= groupOwner,
         "GroupPermission" JSON..= groupPermission]
instance Property "GroupOwner" ResourceDownloadOwnerSettingProperty where
  type PropertyType "GroupOwner" ResourceDownloadOwnerSettingProperty = Value Prelude.Text
  set newValue ResourceDownloadOwnerSettingProperty {..}
    = ResourceDownloadOwnerSettingProperty {groupOwner = newValue, ..}
instance Property "GroupPermission" ResourceDownloadOwnerSettingProperty where
  type PropertyType "GroupPermission" ResourceDownloadOwnerSettingProperty = Value Prelude.Text
  set newValue ResourceDownloadOwnerSettingProperty {..}
    = ResourceDownloadOwnerSettingProperty
        {groupPermission = newValue, ..}