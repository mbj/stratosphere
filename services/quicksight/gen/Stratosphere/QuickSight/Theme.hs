module Stratosphere.QuickSight.Theme (
        module Exports, Theme(..), mkTheme
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Theme.ResourcePermissionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Theme.ThemeConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Theme
  = Theme {awsAccountId :: (Value Prelude.Text),
           baseThemeId :: (Prelude.Maybe (Value Prelude.Text)),
           configuration :: (Prelude.Maybe ThemeConfigurationProperty),
           name :: (Prelude.Maybe (Value Prelude.Text)),
           permissions :: (Prelude.Maybe [ResourcePermissionProperty]),
           tags :: (Prelude.Maybe [Tag]),
           themeId :: (Value Prelude.Text),
           versionDescription :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTheme :: Value Prelude.Text -> Value Prelude.Text -> Theme
mkTheme awsAccountId themeId
  = Theme
      {awsAccountId = awsAccountId, themeId = themeId,
       baseThemeId = Prelude.Nothing, configuration = Prelude.Nothing,
       name = Prelude.Nothing, permissions = Prelude.Nothing,
       tags = Prelude.Nothing, versionDescription = Prelude.Nothing}
instance ToResourceProperties Theme where
  toResourceProperties Theme {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Theme", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AwsAccountId" JSON..= awsAccountId, "ThemeId" JSON..= themeId]
                           (Prelude.catMaybes
                              [(JSON..=) "BaseThemeId" Prelude.<$> baseThemeId,
                               (JSON..=) "Configuration" Prelude.<$> configuration,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Permissions" Prelude.<$> permissions,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VersionDescription" Prelude.<$> versionDescription]))}
instance JSON.ToJSON Theme where
  toJSON Theme {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AwsAccountId" JSON..= awsAccountId, "ThemeId" JSON..= themeId]
              (Prelude.catMaybes
                 [(JSON..=) "BaseThemeId" Prelude.<$> baseThemeId,
                  (JSON..=) "Configuration" Prelude.<$> configuration,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Permissions" Prelude.<$> permissions,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VersionDescription" Prelude.<$> versionDescription])))
instance Property "AwsAccountId" Theme where
  type PropertyType "AwsAccountId" Theme = Value Prelude.Text
  set newValue Theme {..} = Theme {awsAccountId = newValue, ..}
instance Property "BaseThemeId" Theme where
  type PropertyType "BaseThemeId" Theme = Value Prelude.Text
  set newValue Theme {..}
    = Theme {baseThemeId = Prelude.pure newValue, ..}
instance Property "Configuration" Theme where
  type PropertyType "Configuration" Theme = ThemeConfigurationProperty
  set newValue Theme {..}
    = Theme {configuration = Prelude.pure newValue, ..}
instance Property "Name" Theme where
  type PropertyType "Name" Theme = Value Prelude.Text
  set newValue Theme {..} = Theme {name = Prelude.pure newValue, ..}
instance Property "Permissions" Theme where
  type PropertyType "Permissions" Theme = [ResourcePermissionProperty]
  set newValue Theme {..}
    = Theme {permissions = Prelude.pure newValue, ..}
instance Property "Tags" Theme where
  type PropertyType "Tags" Theme = [Tag]
  set newValue Theme {..} = Theme {tags = Prelude.pure newValue, ..}
instance Property "ThemeId" Theme where
  type PropertyType "ThemeId" Theme = Value Prelude.Text
  set newValue Theme {..} = Theme {themeId = newValue, ..}
instance Property "VersionDescription" Theme where
  type PropertyType "VersionDescription" Theme = Value Prelude.Text
  set newValue Theme {..}
    = Theme {versionDescription = Prelude.pure newValue, ..}