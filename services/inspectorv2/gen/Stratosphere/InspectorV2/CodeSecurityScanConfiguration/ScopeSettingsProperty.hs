module Stratosphere.InspectorV2.CodeSecurityScanConfiguration.ScopeSettingsProperty (
        ScopeSettingsProperty(..), mkScopeSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScopeSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityscanconfiguration-scopesettings.html>
    ScopeSettingsProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityscanconfiguration-scopesettings.html#cfn-inspectorv2-codesecurityscanconfiguration-scopesettings-projectselectionscope>
                           projectSelectionScope :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScopeSettingsProperty :: ScopeSettingsProperty
mkScopeSettingsProperty
  = ScopeSettingsProperty
      {haddock_workaround_ = (), projectSelectionScope = Prelude.Nothing}
instance ToResourceProperties ScopeSettingsProperty where
  toResourceProperties ScopeSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::CodeSecurityScanConfiguration.ScopeSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "projectSelectionScope"
                              Prelude.<$> projectSelectionScope])}
instance JSON.ToJSON ScopeSettingsProperty where
  toJSON ScopeSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "projectSelectionScope"
                 Prelude.<$> projectSelectionScope]))
instance Property "projectSelectionScope" ScopeSettingsProperty where
  type PropertyType "projectSelectionScope" ScopeSettingsProperty = Value Prelude.Text
  set newValue ScopeSettingsProperty {..}
    = ScopeSettingsProperty
        {projectSelectionScope = Prelude.pure newValue, ..}