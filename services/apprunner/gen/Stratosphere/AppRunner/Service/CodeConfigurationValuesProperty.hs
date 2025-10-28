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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-codeconfigurationvalues.html>
    CodeConfigurationValuesProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-codeconfigurationvalues.html#cfn-apprunner-service-codeconfigurationvalues-buildcommand>
                                     buildCommand :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-codeconfigurationvalues.html#cfn-apprunner-service-codeconfigurationvalues-port>
                                     port :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-codeconfigurationvalues.html#cfn-apprunner-service-codeconfigurationvalues-runtime>
                                     runtime :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-codeconfigurationvalues.html#cfn-apprunner-service-codeconfigurationvalues-runtimeenvironmentsecrets>
                                     runtimeEnvironmentSecrets :: (Prelude.Maybe [KeyValuePairProperty]),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-codeconfigurationvalues.html#cfn-apprunner-service-codeconfigurationvalues-runtimeenvironmentvariables>
                                     runtimeEnvironmentVariables :: (Prelude.Maybe [KeyValuePairProperty]),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-codeconfigurationvalues.html#cfn-apprunner-service-codeconfigurationvalues-startcommand>
                                     startCommand :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCodeConfigurationValuesProperty ::
  Value Prelude.Text -> CodeConfigurationValuesProperty
mkCodeConfigurationValuesProperty runtime
  = CodeConfigurationValuesProperty
      {haddock_workaround_ = (), runtime = runtime,
       buildCommand = Prelude.Nothing, port = Prelude.Nothing,
       runtimeEnvironmentSecrets = Prelude.Nothing,
       runtimeEnvironmentVariables = Prelude.Nothing,
       startCommand = Prelude.Nothing}
instance ToResourceProperties CodeConfigurationValuesProperty where
  toResourceProperties CodeConfigurationValuesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::Service.CodeConfigurationValues",
         supportsTags = Prelude.False,
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