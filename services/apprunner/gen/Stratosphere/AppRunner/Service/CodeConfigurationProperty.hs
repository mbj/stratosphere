module Stratosphere.AppRunner.Service.CodeConfigurationProperty (
        module Exports, CodeConfigurationProperty(..),
        mkCodeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppRunner.Service.CodeConfigurationValuesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CodeConfigurationProperty
  = CodeConfigurationProperty {codeConfigurationValues :: (Prelude.Maybe CodeConfigurationValuesProperty),
                               configurationSource :: (Value Prelude.Text)}
mkCodeConfigurationProperty ::
  Value Prelude.Text -> CodeConfigurationProperty
mkCodeConfigurationProperty configurationSource
  = CodeConfigurationProperty
      {configurationSource = configurationSource,
       codeConfigurationValues = Prelude.Nothing}
instance ToResourceProperties CodeConfigurationProperty where
  toResourceProperties CodeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::Service.CodeConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConfigurationSource" JSON..= configurationSource]
                           (Prelude.catMaybes
                              [(JSON..=) "CodeConfigurationValues"
                                 Prelude.<$> codeConfigurationValues]))}
instance JSON.ToJSON CodeConfigurationProperty where
  toJSON CodeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConfigurationSource" JSON..= configurationSource]
              (Prelude.catMaybes
                 [(JSON..=) "CodeConfigurationValues"
                    Prelude.<$> codeConfigurationValues])))
instance Property "CodeConfigurationValues" CodeConfigurationProperty where
  type PropertyType "CodeConfigurationValues" CodeConfigurationProperty = CodeConfigurationValuesProperty
  set newValue CodeConfigurationProperty {..}
    = CodeConfigurationProperty
        {codeConfigurationValues = Prelude.pure newValue, ..}
instance Property "ConfigurationSource" CodeConfigurationProperty where
  type PropertyType "ConfigurationSource" CodeConfigurationProperty = Value Prelude.Text
  set newValue CodeConfigurationProperty {..}
    = CodeConfigurationProperty {configurationSource = newValue, ..}