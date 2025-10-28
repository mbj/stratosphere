module Stratosphere.AmplifyUIBuilder.Theme.ThemeValueProperty (
        module Exports, ThemeValueProperty(..), mkThemeValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Theme.ThemeValuesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ThemeValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-theme-themevalue.html>
    ThemeValueProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-theme-themevalue.html#cfn-amplifyuibuilder-theme-themevalue-children>
                        children :: (Prelude.Maybe [ThemeValuesProperty]),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-theme-themevalue.html#cfn-amplifyuibuilder-theme-themevalue-value>
                        value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThemeValueProperty :: ThemeValueProperty
mkThemeValueProperty
  = ThemeValueProperty
      {haddock_workaround_ = (), children = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties ThemeValueProperty where
  toResourceProperties ThemeValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Theme.ThemeValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Children" Prelude.<$> children,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON ThemeValueProperty where
  toJSON ThemeValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Children" Prelude.<$> children,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Children" ThemeValueProperty where
  type PropertyType "Children" ThemeValueProperty = [ThemeValuesProperty]
  set newValue ThemeValueProperty {..}
    = ThemeValueProperty {children = Prelude.pure newValue, ..}
instance Property "Value" ThemeValueProperty where
  type PropertyType "Value" ThemeValueProperty = Value Prelude.Text
  set newValue ThemeValueProperty {..}
    = ThemeValueProperty {value = Prelude.pure newValue, ..}