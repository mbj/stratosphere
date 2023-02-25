module Stratosphere.AppRunner.Service.CodeConfigurationValuesProperty (
        module Exports, CodeConfigurationValuesProperty(..),
        mkCodeConfigurationValuesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppRunner.Service.KeyValuePairProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CodeConfigurationValuesProperty
  = CodeConfigurationValuesProperty {buildCommand :: (Prelude.Maybe (Value Prelude.Text)),
                                     port :: (Prelude.Maybe (Value Prelude.Text)),
                                     runtime :: (Value Prelude.Text),
                                     runtimeEnvironmentSecrets :: (Prelude.Maybe [KeyValuePairProperty]),
                                     runtimeEnvironmentVariables :: (Prelude.Maybe [KeyValuePairProperty]),
                                     startCommand :: (Prelude.Maybe (Value Prelude.Text))}
mkCodeConfigurationValuesProperty ::
  Value Prelude.Text -> CodeConfigurationValuesProperty
mkCodeConfigurationValuesProperty runtime
  = CodeConfigurationValuesProperty
      {runtime = runtime, buildCommand = Prelude.Nothing,
       port = Prelude.Nothing,
       runtimeEnvironmentSecrets = Prelude.Nothing,
       runtimeEnvironmentVariables = Prelude.Nothing,
       startCommand = Prelude.Nothing}
instance ToResourceProperties CodeConfigurationValuesProperty where
  toResourceProperties CodeConfigurationValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::Service.CodeConfigurationValues",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Runtime" JSON..= runtime]
                           (Prelude.catMaybes
                              [(JSON..=) "BuildCommand" Prelude.<$> buildCommand,
                               (JSON..=) "Port" Prelude.<$> port,
                               (JSON..=) "RuntimeEnvironmentSecrets"
                                 Prelude.<$> runtimeEnvironmentSecrets,
                               (JSON..=) "RuntimeEnvironmentVariables"
                                 Prelude.<$> runtimeEnvironmentVariables,
                               (JSON..=) "StartCommand" Prelude.<$> startCommand]))}
instance JSON.ToJSON CodeConfigurationValuesProperty where
  toJSON CodeConfigurationValuesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Runtime" JSON..= runtime]
              (Prelude.catMaybes
                 [(JSON..=) "BuildCommand" Prelude.<$> buildCommand,
                  (JSON..=) "Port" Prelude.<$> port,
                  (JSON..=) "RuntimeEnvironmentSecrets"
                    Prelude.<$> runtimeEnvironmentSecrets,
                  (JSON..=) "RuntimeEnvironmentVariables"
                    Prelude.<$> runtimeEnvironmentVariables,
                  (JSON..=) "StartCommand" Prelude.<$> startCommand])))
instance Property "BuildCommand" CodeConfigurationValuesProperty where
  type PropertyType "BuildCommand" CodeConfigurationValuesProperty = Value Prelude.Text
  set newValue CodeConfigurationValuesProperty {..}
    = CodeConfigurationValuesProperty
        {buildCommand = Prelude.pure newValue, ..}
instance Property "Port" CodeConfigurationValuesProperty where
  type PropertyType "Port" CodeConfigurationValuesProperty = Value Prelude.Text
  set newValue CodeConfigurationValuesProperty {..}
    = CodeConfigurationValuesProperty
        {port = Prelude.pure newValue, ..}
instance Property "Runtime" CodeConfigurationValuesProperty where
  type PropertyType "Runtime" CodeConfigurationValuesProperty = Value Prelude.Text
  set newValue CodeConfigurationValuesProperty {..}
    = CodeConfigurationValuesProperty {runtime = newValue, ..}
instance Property "RuntimeEnvironmentSecrets" CodeConfigurationValuesProperty where
  type PropertyType "RuntimeEnvironmentSecrets" CodeConfigurationValuesProperty = [KeyValuePairProperty]
  set newValue CodeConfigurationValuesProperty {..}
    = CodeConfigurationValuesProperty
        {runtimeEnvironmentSecrets = Prelude.pure newValue, ..}
instance Property "RuntimeEnvironmentVariables" CodeConfigurationValuesProperty where
  type PropertyType "RuntimeEnvironmentVariables" CodeConfigurationValuesProperty = [KeyValuePairProperty]
  set newValue CodeConfigurationValuesProperty {..}
    = CodeConfigurationValuesProperty
        {runtimeEnvironmentVariables = Prelude.pure newValue, ..}
instance Property "StartCommand" CodeConfigurationValuesProperty where
  type PropertyType "StartCommand" CodeConfigurationValuesProperty = Value Prelude.Text
  set newValue CodeConfigurationValuesProperty {..}
    = CodeConfigurationValuesProperty
        {startCommand = Prelude.pure newValue, ..}