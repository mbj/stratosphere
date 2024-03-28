module Stratosphere.Lambda.Function.LoggingConfigProperty (
        LoggingConfigProperty(..), mkLoggingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingConfigProperty
  = LoggingConfigProperty {applicationLogLevel :: (Prelude.Maybe (Value Prelude.Text)),
                           logFormat :: (Prelude.Maybe (Value Prelude.Text)),
                           logGroup :: (Prelude.Maybe (Value Prelude.Text)),
                           systemLogLevel :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingConfigProperty :: LoggingConfigProperty
mkLoggingConfigProperty
  = LoggingConfigProperty
      {applicationLogLevel = Prelude.Nothing,
       logFormat = Prelude.Nothing, logGroup = Prelude.Nothing,
       systemLogLevel = Prelude.Nothing}
instance ToResourceProperties LoggingConfigProperty where
  toResourceProperties LoggingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Function.LoggingConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApplicationLogLevel" Prelude.<$> applicationLogLevel,
                            (JSON..=) "LogFormat" Prelude.<$> logFormat,
                            (JSON..=) "LogGroup" Prelude.<$> logGroup,
                            (JSON..=) "SystemLogLevel" Prelude.<$> systemLogLevel])}
instance JSON.ToJSON LoggingConfigProperty where
  toJSON LoggingConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApplicationLogLevel" Prelude.<$> applicationLogLevel,
               (JSON..=) "LogFormat" Prelude.<$> logFormat,
               (JSON..=) "LogGroup" Prelude.<$> logGroup,
               (JSON..=) "SystemLogLevel" Prelude.<$> systemLogLevel]))
instance Property "ApplicationLogLevel" LoggingConfigProperty where
  type PropertyType "ApplicationLogLevel" LoggingConfigProperty = Value Prelude.Text
  set newValue LoggingConfigProperty {..}
    = LoggingConfigProperty
        {applicationLogLevel = Prelude.pure newValue, ..}
instance Property "LogFormat" LoggingConfigProperty where
  type PropertyType "LogFormat" LoggingConfigProperty = Value Prelude.Text
  set newValue LoggingConfigProperty {..}
    = LoggingConfigProperty {logFormat = Prelude.pure newValue, ..}
instance Property "LogGroup" LoggingConfigProperty where
  type PropertyType "LogGroup" LoggingConfigProperty = Value Prelude.Text
  set newValue LoggingConfigProperty {..}
    = LoggingConfigProperty {logGroup = Prelude.pure newValue, ..}
instance Property "SystemLogLevel" LoggingConfigProperty where
  type PropertyType "SystemLogLevel" LoggingConfigProperty = Value Prelude.Text
  set newValue LoggingConfigProperty {..}
    = LoggingConfigProperty
        {systemLogLevel = Prelude.pure newValue, ..}