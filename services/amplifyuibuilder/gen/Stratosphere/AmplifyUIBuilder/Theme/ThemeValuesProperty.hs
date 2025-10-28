module Stratosphere.AmplifyUIBuilder.Theme.ThemeValuesProperty (
        module Exports, ThemeValuesProperty(..), mkThemeValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Theme.ThemeValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ThemeValuesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-theme-themevalues.html>
    ThemeValuesProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-theme-themevalues.html#cfn-amplifyuibuilder-theme-themevalues-key>
                         key :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-theme-themevalues.html#cfn-amplifyuibuilder-theme-themevalues-value>
                         value :: (Prelude.Maybe ThemeValueProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThemeValuesProperty :: ThemeValuesProperty
mkThemeValuesProperty
  = ThemeValuesProperty
      {haddock_workaround_ = (), key = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties ThemeValuesProperty where
  toResourceProperties ThemeValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Theme.ThemeValues",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON ThemeValuesProperty where
  toJSON ThemeValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" ThemeValuesProperty where
  type PropertyType "Key" ThemeValuesProperty = Value Prelude.Text
  set newValue ThemeValuesProperty {..}
    = ThemeValuesProperty {key = Prelude.pure newValue, ..}
instance Property "Value" ThemeValuesProperty where
  type PropertyType "Value" ThemeValuesProperty = ThemeValueProperty
  set newValue ThemeValuesProperty {..}
    = ThemeValuesProperty {value = Prelude.pure newValue, ..}