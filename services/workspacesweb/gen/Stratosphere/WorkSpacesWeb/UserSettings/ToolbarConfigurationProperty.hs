module Stratosphere.WorkSpacesWeb.UserSettings.ToolbarConfigurationProperty (
        ToolbarConfigurationProperty(..), mkToolbarConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ToolbarConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-toolbarconfiguration.html>
    ToolbarConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-toolbarconfiguration.html#cfn-workspacesweb-usersettings-toolbarconfiguration-hiddentoolbaritems>
                                  hiddenToolbarItems :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-toolbarconfiguration.html#cfn-workspacesweb-usersettings-toolbarconfiguration-maxdisplayresolution>
                                  maxDisplayResolution :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-toolbarconfiguration.html#cfn-workspacesweb-usersettings-toolbarconfiguration-toolbartype>
                                  toolbarType :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-usersettings-toolbarconfiguration.html#cfn-workspacesweb-usersettings-toolbarconfiguration-visualmode>
                                  visualMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkToolbarConfigurationProperty :: ToolbarConfigurationProperty
mkToolbarConfigurationProperty
  = ToolbarConfigurationProperty
      {haddock_workaround_ = (), hiddenToolbarItems = Prelude.Nothing,
       maxDisplayResolution = Prelude.Nothing,
       toolbarType = Prelude.Nothing, visualMode = Prelude.Nothing}
instance ToResourceProperties ToolbarConfigurationProperty where
  toResourceProperties ToolbarConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesWeb::UserSettings.ToolbarConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HiddenToolbarItems" Prelude.<$> hiddenToolbarItems,
                            (JSON..=) "MaxDisplayResolution" Prelude.<$> maxDisplayResolution,
                            (JSON..=) "ToolbarType" Prelude.<$> toolbarType,
                            (JSON..=) "VisualMode" Prelude.<$> visualMode])}
instance JSON.ToJSON ToolbarConfigurationProperty where
  toJSON ToolbarConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HiddenToolbarItems" Prelude.<$> hiddenToolbarItems,
               (JSON..=) "MaxDisplayResolution" Prelude.<$> maxDisplayResolution,
               (JSON..=) "ToolbarType" Prelude.<$> toolbarType,
               (JSON..=) "VisualMode" Prelude.<$> visualMode]))
instance Property "HiddenToolbarItems" ToolbarConfigurationProperty where
  type PropertyType "HiddenToolbarItems" ToolbarConfigurationProperty = ValueList Prelude.Text
  set newValue ToolbarConfigurationProperty {..}
    = ToolbarConfigurationProperty
        {hiddenToolbarItems = Prelude.pure newValue, ..}
instance Property "MaxDisplayResolution" ToolbarConfigurationProperty where
  type PropertyType "MaxDisplayResolution" ToolbarConfigurationProperty = Value Prelude.Text
  set newValue ToolbarConfigurationProperty {..}
    = ToolbarConfigurationProperty
        {maxDisplayResolution = Prelude.pure newValue, ..}
instance Property "ToolbarType" ToolbarConfigurationProperty where
  type PropertyType "ToolbarType" ToolbarConfigurationProperty = Value Prelude.Text
  set newValue ToolbarConfigurationProperty {..}
    = ToolbarConfigurationProperty
        {toolbarType = Prelude.pure newValue, ..}
instance Property "VisualMode" ToolbarConfigurationProperty where
  type PropertyType "VisualMode" ToolbarConfigurationProperty = Value Prelude.Text
  set newValue ToolbarConfigurationProperty {..}
    = ToolbarConfigurationProperty
        {visualMode = Prelude.pure newValue, ..}