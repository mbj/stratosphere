module Stratosphere.QuickSight.Dashboard.SheetElementConfigurationOverridesProperty (
        SheetElementConfigurationOverridesProperty(..),
        mkSheetElementConfigurationOverridesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SheetElementConfigurationOverridesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sheetelementconfigurationoverrides.html>
    SheetElementConfigurationOverridesProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sheetelementconfigurationoverrides.html#cfn-quicksight-dashboard-sheetelementconfigurationoverrides-visibility>
                                                visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSheetElementConfigurationOverridesProperty ::
  SheetElementConfigurationOverridesProperty
mkSheetElementConfigurationOverridesProperty
  = SheetElementConfigurationOverridesProperty
      {haddock_workaround_ = (), visibility = Prelude.Nothing}
instance ToResourceProperties SheetElementConfigurationOverridesProperty where
  toResourceProperties
    SheetElementConfigurationOverridesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.SheetElementConfigurationOverrides",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON SheetElementConfigurationOverridesProperty where
  toJSON SheetElementConfigurationOverridesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "Visibility" SheetElementConfigurationOverridesProperty where
  type PropertyType "Visibility" SheetElementConfigurationOverridesProperty = Value Prelude.Text
  set newValue SheetElementConfigurationOverridesProperty {..}
    = SheetElementConfigurationOverridesProperty
        {visibility = Prelude.pure newValue, ..}