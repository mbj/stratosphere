module Stratosphere.QuickSight.Theme.ThemeVersionProperty (
        module Exports, ThemeVersionProperty(..), mkThemeVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Theme.ThemeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Theme.ThemeErrorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ThemeVersionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-themeversion.html>
    ThemeVersionProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-themeversion.html#cfn-quicksight-theme-themeversion-arn>
                          arn :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-themeversion.html#cfn-quicksight-theme-themeversion-basethemeid>
                          baseThemeId :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-themeversion.html#cfn-quicksight-theme-themeversion-configuration>
                          configuration :: (Prelude.Maybe ThemeConfigurationProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-themeversion.html#cfn-quicksight-theme-themeversion-createdtime>
                          createdTime :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-themeversion.html#cfn-quicksight-theme-themeversion-description>
                          description :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-themeversion.html#cfn-quicksight-theme-themeversion-errors>
                          errors :: (Prelude.Maybe [ThemeErrorProperty]),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-themeversion.html#cfn-quicksight-theme-themeversion-status>
                          status :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-themeversion.html#cfn-quicksight-theme-themeversion-versionnumber>
                          versionNumber :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThemeVersionProperty :: ThemeVersionProperty
mkThemeVersionProperty
  = ThemeVersionProperty
      {haddock_workaround_ = (), arn = Prelude.Nothing,
       baseThemeId = Prelude.Nothing, configuration = Prelude.Nothing,
       createdTime = Prelude.Nothing, description = Prelude.Nothing,
       errors = Prelude.Nothing, status = Prelude.Nothing,
       versionNumber = Prelude.Nothing}
instance ToResourceProperties ThemeVersionProperty where
  toResourceProperties ThemeVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Theme.ThemeVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Arn" Prelude.<$> arn,
                            (JSON..=) "BaseThemeId" Prelude.<$> baseThemeId,
                            (JSON..=) "Configuration" Prelude.<$> configuration,
                            (JSON..=) "CreatedTime" Prelude.<$> createdTime,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Errors" Prelude.<$> errors,
                            (JSON..=) "Status" Prelude.<$> status,
                            (JSON..=) "VersionNumber" Prelude.<$> versionNumber])}
instance JSON.ToJSON ThemeVersionProperty where
  toJSON ThemeVersionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Arn" Prelude.<$> arn,
               (JSON..=) "BaseThemeId" Prelude.<$> baseThemeId,
               (JSON..=) "Configuration" Prelude.<$> configuration,
               (JSON..=) "CreatedTime" Prelude.<$> createdTime,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Errors" Prelude.<$> errors,
               (JSON..=) "Status" Prelude.<$> status,
               (JSON..=) "VersionNumber" Prelude.<$> versionNumber]))
instance Property "Arn" ThemeVersionProperty where
  type PropertyType "Arn" ThemeVersionProperty = Value Prelude.Text
  set newValue ThemeVersionProperty {..}
    = ThemeVersionProperty {arn = Prelude.pure newValue, ..}
instance Property "BaseThemeId" ThemeVersionProperty where
  type PropertyType "BaseThemeId" ThemeVersionProperty = Value Prelude.Text
  set newValue ThemeVersionProperty {..}
    = ThemeVersionProperty {baseThemeId = Prelude.pure newValue, ..}
instance Property "Configuration" ThemeVersionProperty where
  type PropertyType "Configuration" ThemeVersionProperty = ThemeConfigurationProperty
  set newValue ThemeVersionProperty {..}
    = ThemeVersionProperty {configuration = Prelude.pure newValue, ..}
instance Property "CreatedTime" ThemeVersionProperty where
  type PropertyType "CreatedTime" ThemeVersionProperty = Value Prelude.Text
  set newValue ThemeVersionProperty {..}
    = ThemeVersionProperty {createdTime = Prelude.pure newValue, ..}
instance Property "Description" ThemeVersionProperty where
  type PropertyType "Description" ThemeVersionProperty = Value Prelude.Text
  set newValue ThemeVersionProperty {..}
    = ThemeVersionProperty {description = Prelude.pure newValue, ..}
instance Property "Errors" ThemeVersionProperty where
  type PropertyType "Errors" ThemeVersionProperty = [ThemeErrorProperty]
  set newValue ThemeVersionProperty {..}
    = ThemeVersionProperty {errors = Prelude.pure newValue, ..}
instance Property "Status" ThemeVersionProperty where
  type PropertyType "Status" ThemeVersionProperty = Value Prelude.Text
  set newValue ThemeVersionProperty {..}
    = ThemeVersionProperty {status = Prelude.pure newValue, ..}
instance Property "VersionNumber" ThemeVersionProperty where
  type PropertyType "VersionNumber" ThemeVersionProperty = Value Prelude.Double
  set newValue ThemeVersionProperty {..}
    = ThemeVersionProperty {versionNumber = Prelude.pure newValue, ..}