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
           baseThemeId :: (Value Prelude.Text),
           configuration :: ThemeConfigurationProperty,
           name :: (Value Prelude.Text),
           permissions :: (Prelude.Maybe [ResourcePermissionProperty]),
           tags :: (Prelude.Maybe [Tag]),
           themeId :: (Value Prelude.Text),
           versionDescription :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTheme ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ThemeConfigurationProperty
        -> Value Prelude.Text -> Value Prelude.Text -> Theme
mkTheme awsAccountId baseThemeId configuration name themeId
  = Theme
      {awsAccountId = awsAccountId, baseThemeId = baseThemeId,
       configuration = configuration, name = name, themeId = themeId,
       permissions = Prelude.Nothing, tags = Prelude.Nothing,
       versionDescription = Prelude.Nothing}
instance ToResourceProperties Theme where
  toResourceProperties Theme {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Theme", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AwsAccountId" JSON..= awsAccountId,
                            "BaseThemeId" JSON..= baseThemeId,
                            "Configuration" JSON..= configuration, "Name" JSON..= name,
                            "ThemeId" JSON..= themeId]
                           (Prelude.catMaybes
                              [(JSON..=) "Permissions" Prelude.<$> permissions,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VersionDescription" Prelude.<$> versionDescription]))}
instance JSON.ToJSON Theme where
  toJSON Theme {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AwsAccountId" JSON..= awsAccountId,
               "BaseThemeId" JSON..= baseThemeId,
               "Configuration" JSON..= configuration, "Name" JSON..= name,
               "ThemeId" JSON..= themeId]
              (Prelude.catMaybes
                 [(JSON..=) "Permissions" Prelude.<$> permissions,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VersionDescription" Prelude.<$> versionDescription])))
instance Property "AwsAccountId" Theme where
  type PropertyType "AwsAccountId" Theme = Value Prelude.Text
  set newValue Theme {..} = Theme {awsAccountId = newValue, ..}
instance Property "BaseThemeId" Theme where
  type PropertyType "BaseThemeId" Theme = Value Prelude.Text
  set newValue Theme {..} = Theme {baseThemeId = newValue, ..}
instance Property "Configuration" Theme where
  type PropertyType "Configuration" Theme = ThemeConfigurationProperty
  set newValue Theme {..} = Theme {configuration = newValue, ..}
instance Property "Name" Theme where
  type PropertyType "Name" Theme = Value Prelude.Text
  set newValue Theme {..} = Theme {name = newValue, ..}
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