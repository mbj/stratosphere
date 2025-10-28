module Stratosphere.AppRunner.Service.ImageConfigurationProperty (
        module Exports, ImageConfigurationProperty(..),
        mkImageConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppRunner.Service.KeyValuePairProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-imageconfiguration.html>
    ImageConfigurationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-imageconfiguration.html#cfn-apprunner-service-imageconfiguration-port>
                                port :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-imageconfiguration.html#cfn-apprunner-service-imageconfiguration-runtimeenvironmentsecrets>
                                runtimeEnvironmentSecrets :: (Prelude.Maybe [KeyValuePairProperty]),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-imageconfiguration.html#cfn-apprunner-service-imageconfiguration-runtimeenvironmentvariables>
                                runtimeEnvironmentVariables :: (Prelude.Maybe [KeyValuePairProperty]),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-imageconfiguration.html#cfn-apprunner-service-imageconfiguration-startcommand>
                                startCommand :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageConfigurationProperty :: ImageConfigurationProperty
mkImageConfigurationProperty
  = ImageConfigurationProperty
      {haddock_workaround_ = (), port = Prelude.Nothing,
       runtimeEnvironmentSecrets = Prelude.Nothing,
       runtimeEnvironmentVariables = Prelude.Nothing,
       startCommand = Prelude.Nothing}
instance ToResourceProperties ImageConfigurationProperty where
  toResourceProperties ImageConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::Service.ImageConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "RuntimeEnvironmentSecrets"
                              Prelude.<$> runtimeEnvironmentSecrets,
                            (JSON..=) "RuntimeEnvironmentVariables"
                              Prelude.<$> runtimeEnvironmentVariables,
                            (JSON..=) "StartCommand" Prelude.<$> startCommand])}
instance JSON.ToJSON ImageConfigurationProperty where
  toJSON ImageConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "RuntimeEnvironmentSecrets"
                 Prelude.<$> runtimeEnvironmentSecrets,
               (JSON..=) "RuntimeEnvironmentVariables"
                 Prelude.<$> runtimeEnvironmentVariables,
               (JSON..=) "StartCommand" Prelude.<$> startCommand]))
instance Property "Port" ImageConfigurationProperty where
  type PropertyType "Port" ImageConfigurationProperty = Value Prelude.Text
  set newValue ImageConfigurationProperty {..}
    = ImageConfigurationProperty {port = Prelude.pure newValue, ..}
instance Property "RuntimeEnvironmentSecrets" ImageConfigurationProperty where
  type PropertyType "RuntimeEnvironmentSecrets" ImageConfigurationProperty = [KeyValuePairProperty]
  set newValue ImageConfigurationProperty {..}
    = ImageConfigurationProperty
        {runtimeEnvironmentSecrets = Prelude.pure newValue, ..}
instance Property "RuntimeEnvironmentVariables" ImageConfigurationProperty where
  type PropertyType "RuntimeEnvironmentVariables" ImageConfigurationProperty = [KeyValuePairProperty]
  set newValue ImageConfigurationProperty {..}
    = ImageConfigurationProperty
        {runtimeEnvironmentVariables = Prelude.pure newValue, ..}
instance Property "StartCommand" ImageConfigurationProperty where
  type PropertyType "StartCommand" ImageConfigurationProperty = Value Prelude.Text
  set newValue ImageConfigurationProperty {..}
    = ImageConfigurationProperty
        {startCommand = Prelude.pure newValue, ..}