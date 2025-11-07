module Stratosphere.QuickSight.Template.SheetElementConfigurationOverridesProperty (
        SheetElementConfigurationOverridesProperty(..),
        mkSheetElementConfigurationOverridesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data SheetElementConfigurationOverridesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sheetelementconfigurationoverrides.html>
    SheetElementConfigurationOverridesProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sheetelementconfigurationoverrides.html#cfn-quicksight-template-sheetelementconfigurationoverrides-visibility>
                                                visibility :: (Prelude.Maybe JSON.Object)}
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
        {awsType = "AWS::QuickSight::Template.SheetElementConfigurationOverrides",
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
  type PropertyType "Visibility" SheetElementConfigurationOverridesProperty = JSON.Object
  set newValue SheetElementConfigurationOverridesProperty {..}
    = SheetElementConfigurationOverridesProperty
        {visibility = Prelude.pure newValue, ..}