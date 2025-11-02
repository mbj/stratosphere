module Stratosphere.Greengrass.ResourceDefinitionVersion.GroupOwnerSettingProperty (
        GroupOwnerSettingProperty(..), mkGroupOwnerSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GroupOwnerSettingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-groupownersetting.html>
    GroupOwnerSettingProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-groupownersetting.html#cfn-greengrass-resourcedefinitionversion-groupownersetting-autoaddgroupowner>
                               autoAddGroupOwner :: (Value Prelude.Bool),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-groupownersetting.html#cfn-greengrass-resourcedefinitionversion-groupownersetting-groupowner>
                               groupOwner :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGroupOwnerSettingProperty ::
  Value Prelude.Bool -> GroupOwnerSettingProperty
mkGroupOwnerSettingProperty autoAddGroupOwner
  = GroupOwnerSettingProperty
      {haddock_workaround_ = (), autoAddGroupOwner = autoAddGroupOwner,
       groupOwner = Prelude.Nothing}
instance ToResourceProperties GroupOwnerSettingProperty where
  toResourceProperties GroupOwnerSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::ResourceDefinitionVersion.GroupOwnerSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AutoAddGroupOwner" JSON..= autoAddGroupOwner]
                           (Prelude.catMaybes
                              [(JSON..=) "GroupOwner" Prelude.<$> groupOwner]))}
instance JSON.ToJSON GroupOwnerSettingProperty where
  toJSON GroupOwnerSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AutoAddGroupOwner" JSON..= autoAddGroupOwner]
              (Prelude.catMaybes
                 [(JSON..=) "GroupOwner" Prelude.<$> groupOwner])))
instance Property "AutoAddGroupOwner" GroupOwnerSettingProperty where
  type PropertyType "AutoAddGroupOwner" GroupOwnerSettingProperty = Value Prelude.Bool
  set newValue GroupOwnerSettingProperty {..}
    = GroupOwnerSettingProperty {autoAddGroupOwner = newValue, ..}
instance Property "GroupOwner" GroupOwnerSettingProperty where
  type PropertyType "GroupOwner" GroupOwnerSettingProperty = Value Prelude.Text
  set newValue GroupOwnerSettingProperty {..}
    = GroupOwnerSettingProperty
        {groupOwner = Prelude.pure newValue, ..}