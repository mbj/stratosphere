module Stratosphere.QuickSight.Theme.ThemeConfigurationProperty (
        module Exports, ThemeConfigurationProperty(..),
        mkThemeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Theme.DataColorPaletteProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Theme.SheetStyleProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Theme.TypographyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Theme.UIColorPaletteProperty as Exports
import Stratosphere.ResourceProperties
data ThemeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-themeconfiguration.html>
    ThemeConfigurationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-themeconfiguration.html#cfn-quicksight-theme-themeconfiguration-datacolorpalette>
                                dataColorPalette :: (Prelude.Maybe DataColorPaletteProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-themeconfiguration.html#cfn-quicksight-theme-themeconfiguration-sheet>
                                sheet :: (Prelude.Maybe SheetStyleProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-themeconfiguration.html#cfn-quicksight-theme-themeconfiguration-typography>
                                typography :: (Prelude.Maybe TypographyProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-themeconfiguration.html#cfn-quicksight-theme-themeconfiguration-uicolorpalette>
                                uIColorPalette :: (Prelude.Maybe UIColorPaletteProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThemeConfigurationProperty :: ThemeConfigurationProperty
mkThemeConfigurationProperty
  = ThemeConfigurationProperty
      {haddock_workaround_ = (), dataColorPalette = Prelude.Nothing,
       sheet = Prelude.Nothing, typography = Prelude.Nothing,
       uIColorPalette = Prelude.Nothing}
instance ToResourceProperties ThemeConfigurationProperty where
  toResourceProperties ThemeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Theme.ThemeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataColorPalette" Prelude.<$> dataColorPalette,
                            (JSON..=) "Sheet" Prelude.<$> sheet,
                            (JSON..=) "Typography" Prelude.<$> typography,
                            (JSON..=) "UIColorPalette" Prelude.<$> uIColorPalette])}
instance JSON.ToJSON ThemeConfigurationProperty where
  toJSON ThemeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataColorPalette" Prelude.<$> dataColorPalette,
               (JSON..=) "Sheet" Prelude.<$> sheet,
               (JSON..=) "Typography" Prelude.<$> typography,
               (JSON..=) "UIColorPalette" Prelude.<$> uIColorPalette]))
instance Property "DataColorPalette" ThemeConfigurationProperty where
  type PropertyType "DataColorPalette" ThemeConfigurationProperty = DataColorPaletteProperty
  set newValue ThemeConfigurationProperty {..}
    = ThemeConfigurationProperty
        {dataColorPalette = Prelude.pure newValue, ..}
instance Property "Sheet" ThemeConfigurationProperty where
  type PropertyType "Sheet" ThemeConfigurationProperty = SheetStyleProperty
  set newValue ThemeConfigurationProperty {..}
    = ThemeConfigurationProperty {sheet = Prelude.pure newValue, ..}
instance Property "Typography" ThemeConfigurationProperty where
  type PropertyType "Typography" ThemeConfigurationProperty = TypographyProperty
  set newValue ThemeConfigurationProperty {..}
    = ThemeConfigurationProperty
        {typography = Prelude.pure newValue, ..}
instance Property "UIColorPalette" ThemeConfigurationProperty where
  type PropertyType "UIColorPalette" ThemeConfigurationProperty = UIColorPaletteProperty
  set newValue ThemeConfigurationProperty {..}
    = ThemeConfigurationProperty
        {uIColorPalette = Prelude.pure newValue, ..}