module Stratosphere.AmplifyUIBuilder.Theme (
        module Exports, Theme(..), mkTheme
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Theme.ThemeValuesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Theme
  = Theme {appId :: (Prelude.Maybe (Value Prelude.Text)),
           environmentName :: (Prelude.Maybe (Value Prelude.Text)),
           name :: (Prelude.Maybe (Value Prelude.Text)),
           overrides :: (Prelude.Maybe [ThemeValuesProperty]),
           tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
           values :: (Prelude.Maybe [ThemeValuesProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTheme :: Theme
mkTheme
  = Theme
      {appId = Prelude.Nothing, environmentName = Prelude.Nothing,
       name = Prelude.Nothing, overrides = Prelude.Nothing,
       tags = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties Theme where
  toResourceProperties Theme {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Theme",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AppId" Prelude.<$> appId,
                            (JSON..=) "EnvironmentName" Prelude.<$> environmentName,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Overrides" Prelude.<$> overrides,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON Theme where
  toJSON Theme {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AppId" Prelude.<$> appId,
               (JSON..=) "EnvironmentName" Prelude.<$> environmentName,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Overrides" Prelude.<$> overrides,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "AppId" Theme where
  type PropertyType "AppId" Theme = Value Prelude.Text
  set newValue Theme {..} = Theme {appId = Prelude.pure newValue, ..}
instance Property "EnvironmentName" Theme where
  type PropertyType "EnvironmentName" Theme = Value Prelude.Text
  set newValue Theme {..}
    = Theme {environmentName = Prelude.pure newValue, ..}
instance Property "Name" Theme where
  type PropertyType "Name" Theme = Value Prelude.Text
  set newValue Theme {..} = Theme {name = Prelude.pure newValue, ..}
instance Property "Overrides" Theme where
  type PropertyType "Overrides" Theme = [ThemeValuesProperty]
  set newValue Theme {..}
    = Theme {overrides = Prelude.pure newValue, ..}
instance Property "Tags" Theme where
  type PropertyType "Tags" Theme = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Theme {..} = Theme {tags = Prelude.pure newValue, ..}
instance Property "Values" Theme where
  type PropertyType "Values" Theme = [ThemeValuesProperty]
  set newValue Theme {..}
    = Theme {values = Prelude.pure newValue, ..}