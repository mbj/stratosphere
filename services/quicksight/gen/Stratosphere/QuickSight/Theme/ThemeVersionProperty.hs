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
  = ThemeVersionProperty {arn :: (Prelude.Maybe (Value Prelude.Text)),
                          baseThemeId :: (Prelude.Maybe (Value Prelude.Text)),
                          configuration :: (Prelude.Maybe ThemeConfigurationProperty),
                          createdTime :: (Prelude.Maybe (Value Prelude.Text)),
                          description :: (Prelude.Maybe (Value Prelude.Text)),
                          errors :: (Prelude.Maybe [ThemeErrorProperty]),
                          status :: (Prelude.Maybe (Value Prelude.Text)),
                          versionNumber :: (Prelude.Maybe (Value Prelude.Double))}
mkThemeVersionProperty :: ThemeVersionProperty
mkThemeVersionProperty
  = ThemeVersionProperty
      {arn = Prelude.Nothing, baseThemeId = Prelude.Nothing,
       configuration = Prelude.Nothing, createdTime = Prelude.Nothing,
       description = Prelude.Nothing, errors = Prelude.Nothing,
       status = Prelude.Nothing, versionNumber = Prelude.Nothing}
instance ToResourceProperties ThemeVersionProperty where
  toResourceProperties ThemeVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Theme.ThemeVersion",
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