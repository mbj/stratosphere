module Stratosphere.MWAA.Environment.ModuleLoggingConfigurationProperty (
        ModuleLoggingConfigurationProperty(..),
        mkModuleLoggingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModuleLoggingConfigurationProperty
  = ModuleLoggingConfigurationProperty {cloudWatchLogGroupArn :: (Prelude.Maybe (Value Prelude.Text)),
                                        enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                        logLevel :: (Prelude.Maybe (Value Prelude.Text))}
mkModuleLoggingConfigurationProperty ::
  ModuleLoggingConfigurationProperty
mkModuleLoggingConfigurationProperty
  = ModuleLoggingConfigurationProperty
      {cloudWatchLogGroupArn = Prelude.Nothing,
       enabled = Prelude.Nothing, logLevel = Prelude.Nothing}
instance ToResourceProperties ModuleLoggingConfigurationProperty where
  toResourceProperties ModuleLoggingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MWAA::Environment.ModuleLoggingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudWatchLogGroupArn"
                              Prelude.<$> cloudWatchLogGroupArn,
                            (JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "LogLevel" Prelude.<$> logLevel])}
instance JSON.ToJSON ModuleLoggingConfigurationProperty where
  toJSON ModuleLoggingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchLogGroupArn"
                 Prelude.<$> cloudWatchLogGroupArn,
               (JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "LogLevel" Prelude.<$> logLevel]))
instance Property "CloudWatchLogGroupArn" ModuleLoggingConfigurationProperty where
  type PropertyType "CloudWatchLogGroupArn" ModuleLoggingConfigurationProperty = Value Prelude.Text
  set newValue ModuleLoggingConfigurationProperty {..}
    = ModuleLoggingConfigurationProperty
        {cloudWatchLogGroupArn = Prelude.pure newValue, ..}
instance Property "Enabled" ModuleLoggingConfigurationProperty where
  type PropertyType "Enabled" ModuleLoggingConfigurationProperty = Value Prelude.Bool
  set newValue ModuleLoggingConfigurationProperty {..}
    = ModuleLoggingConfigurationProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "LogLevel" ModuleLoggingConfigurationProperty where
  type PropertyType "LogLevel" ModuleLoggingConfigurationProperty = Value Prelude.Text
  set newValue ModuleLoggingConfigurationProperty {..}
    = ModuleLoggingConfigurationProperty
        {logLevel = Prelude.pure newValue, ..}