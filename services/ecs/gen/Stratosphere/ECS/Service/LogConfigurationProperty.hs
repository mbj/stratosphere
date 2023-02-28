module Stratosphere.ECS.Service.LogConfigurationProperty (
        module Exports, LogConfigurationProperty(..),
        mkLogConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.Service.SecretProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogConfigurationProperty
  = LogConfigurationProperty {logDriver :: (Prelude.Maybe (Value Prelude.Text)),
                              options :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                              secretOptions :: (Prelude.Maybe [SecretProperty])}
mkLogConfigurationProperty :: LogConfigurationProperty
mkLogConfigurationProperty
  = LogConfigurationProperty
      {logDriver = Prelude.Nothing, options = Prelude.Nothing,
       secretOptions = Prelude.Nothing}
instance ToResourceProperties LogConfigurationProperty where
  toResourceProperties LogConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.LogConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LogDriver" Prelude.<$> logDriver,
                            (JSON..=) "Options" Prelude.<$> options,
                            (JSON..=) "SecretOptions" Prelude.<$> secretOptions])}
instance JSON.ToJSON LogConfigurationProperty where
  toJSON LogConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LogDriver" Prelude.<$> logDriver,
               (JSON..=) "Options" Prelude.<$> options,
               (JSON..=) "SecretOptions" Prelude.<$> secretOptions]))
instance Property "LogDriver" LogConfigurationProperty where
  type PropertyType "LogDriver" LogConfigurationProperty = Value Prelude.Text
  set newValue LogConfigurationProperty {..}
    = LogConfigurationProperty {logDriver = Prelude.pure newValue, ..}
instance Property "Options" LogConfigurationProperty where
  type PropertyType "Options" LogConfigurationProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue LogConfigurationProperty {..}
    = LogConfigurationProperty {options = Prelude.pure newValue, ..}
instance Property "SecretOptions" LogConfigurationProperty where
  type PropertyType "SecretOptions" LogConfigurationProperty = [SecretProperty]
  set newValue LogConfigurationProperty {..}
    = LogConfigurationProperty
        {secretOptions = Prelude.pure newValue, ..}