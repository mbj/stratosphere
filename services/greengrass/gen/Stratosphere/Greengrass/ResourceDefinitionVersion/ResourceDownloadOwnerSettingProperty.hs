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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedownloadownersetting.html>
    ResourceDownloadOwnerSettingProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedownloadownersetting.html#cfn-greengrass-resourcedefinitionversion-resourcedownloadownersetting-groupowner>
                                          groupOwner :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedownloadownersetting.html#cfn-greengrass-resourcedefinitionversion-resourcedownloadownersetting-grouppermission>
                                          groupPermission :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceDownloadOwnerSettingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ResourceDownloadOwnerSettingProperty
mkResourceDownloadOwnerSettingProperty groupOwner groupPermission
  = ResourceDownloadOwnerSettingProperty
      {haddock_workaround_ = (), groupOwner = groupOwner,
       groupPermission = groupPermission}
instance ToResourceProperties ResourceDownloadOwnerSettingProperty where
  toResourceProperties ResourceDownloadOwnerSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::ResourceDefinitionVersion.ResourceDownloadOwnerSetting",
         supportsTags = Prelude.False,
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