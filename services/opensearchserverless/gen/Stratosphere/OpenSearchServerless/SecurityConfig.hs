module Stratosphere.OpenSearchServerless.SecurityConfig (
        module Exports, SecurityConfig(..), mkSecurityConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpenSearchServerless.SecurityConfig.SamlConfigOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityConfig
  = SecurityConfig {description :: (Prelude.Maybe (Value Prelude.Text)),
                    name :: (Prelude.Maybe (Value Prelude.Text)),
                    samlOptions :: (Prelude.Maybe SamlConfigOptionsProperty),
                    type' :: (Prelude.Maybe (Value Prelude.Text))}
mkSecurityConfig :: SecurityConfig
mkSecurityConfig
  = SecurityConfig
      {description = Prelude.Nothing, name = Prelude.Nothing,
       samlOptions = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties SecurityConfig where
  toResourceProperties SecurityConfig {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchServerless::SecurityConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "SamlOptions" Prelude.<$> samlOptions,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON SecurityConfig where
  toJSON SecurityConfig {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "SamlOptions" Prelude.<$> samlOptions,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Description" SecurityConfig where
  type PropertyType "Description" SecurityConfig = Value Prelude.Text
  set newValue SecurityConfig {..}
    = SecurityConfig {description = Prelude.pure newValue, ..}
instance Property "Name" SecurityConfig where
  type PropertyType "Name" SecurityConfig = Value Prelude.Text
  set newValue SecurityConfig {..}
    = SecurityConfig {name = Prelude.pure newValue, ..}
instance Property "SamlOptions" SecurityConfig where
  type PropertyType "SamlOptions" SecurityConfig = SamlConfigOptionsProperty
  set newValue SecurityConfig {..}
    = SecurityConfig {samlOptions = Prelude.pure newValue, ..}
instance Property "Type" SecurityConfig where
  type PropertyType "Type" SecurityConfig = Value Prelude.Text
  set newValue SecurityConfig {..}
    = SecurityConfig {type' = Prelude.pure newValue, ..}