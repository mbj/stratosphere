module Stratosphere.Batch.JobDefinition.LogConfigurationProperty (
        module Exports, LogConfigurationProperty(..),
        mkLogConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.SecretProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogConfigurationProperty
  = LogConfigurationProperty {logDriver :: (Value Prelude.Text),
                              options :: (Prelude.Maybe JSON.Object),
                              secretOptions :: (Prelude.Maybe [SecretProperty])}
mkLogConfigurationProperty ::
  Value Prelude.Text -> LogConfigurationProperty
mkLogConfigurationProperty logDriver
  = LogConfigurationProperty
      {logDriver = logDriver, options = Prelude.Nothing,
       secretOptions = Prelude.Nothing}
instance ToResourceProperties LogConfigurationProperty where
  toResourceProperties LogConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.LogConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LogDriver" JSON..= logDriver]
                           (Prelude.catMaybes
                              [(JSON..=) "Options" Prelude.<$> options,
                               (JSON..=) "SecretOptions" Prelude.<$> secretOptions]))}
instance JSON.ToJSON LogConfigurationProperty where
  toJSON LogConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LogDriver" JSON..= logDriver]
              (Prelude.catMaybes
                 [(JSON..=) "Options" Prelude.<$> options,
                  (JSON..=) "SecretOptions" Prelude.<$> secretOptions])))
instance Property "LogDriver" LogConfigurationProperty where
  type PropertyType "LogDriver" LogConfigurationProperty = Value Prelude.Text
  set newValue LogConfigurationProperty {..}
    = LogConfigurationProperty {logDriver = newValue, ..}
instance Property "Options" LogConfigurationProperty where
  type PropertyType "Options" LogConfigurationProperty = JSON.Object
  set newValue LogConfigurationProperty {..}
    = LogConfigurationProperty {options = Prelude.pure newValue, ..}
instance Property "SecretOptions" LogConfigurationProperty where
  type PropertyType "SecretOptions" LogConfigurationProperty = [SecretProperty]
  set newValue LogConfigurationProperty {..}
    = LogConfigurationProperty
        {secretOptions = Prelude.pure newValue, ..}