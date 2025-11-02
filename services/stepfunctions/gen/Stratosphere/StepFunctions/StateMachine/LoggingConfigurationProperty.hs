module Stratosphere.StepFunctions.StateMachine.LoggingConfigurationProperty (
        module Exports, LoggingConfigurationProperty(..),
        mkLoggingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.StepFunctions.StateMachine.LogDestinationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-loggingconfiguration.html>
    LoggingConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-loggingconfiguration.html#cfn-stepfunctions-statemachine-loggingconfiguration-destinations>
                                  destinations :: (Prelude.Maybe [LogDestinationProperty]),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-loggingconfiguration.html#cfn-stepfunctions-statemachine-loggingconfiguration-includeexecutiondata>
                                  includeExecutionData :: (Prelude.Maybe (Value Prelude.Bool)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-loggingconfiguration.html#cfn-stepfunctions-statemachine-loggingconfiguration-level>
                                  level :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingConfigurationProperty :: LoggingConfigurationProperty
mkLoggingConfigurationProperty
  = LoggingConfigurationProperty
      {haddock_workaround_ = (), destinations = Prelude.Nothing,
       includeExecutionData = Prelude.Nothing, level = Prelude.Nothing}
instance ToResourceProperties LoggingConfigurationProperty where
  toResourceProperties LoggingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::StepFunctions::StateMachine.LoggingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Destinations" Prelude.<$> destinations,
                            (JSON..=) "IncludeExecutionData" Prelude.<$> includeExecutionData,
                            (JSON..=) "Level" Prelude.<$> level])}
instance JSON.ToJSON LoggingConfigurationProperty where
  toJSON LoggingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Destinations" Prelude.<$> destinations,
               (JSON..=) "IncludeExecutionData" Prelude.<$> includeExecutionData,
               (JSON..=) "Level" Prelude.<$> level]))
instance Property "Destinations" LoggingConfigurationProperty where
  type PropertyType "Destinations" LoggingConfigurationProperty = [LogDestinationProperty]
  set newValue LoggingConfigurationProperty {..}
    = LoggingConfigurationProperty
        {destinations = Prelude.pure newValue, ..}
instance Property "IncludeExecutionData" LoggingConfigurationProperty where
  type PropertyType "IncludeExecutionData" LoggingConfigurationProperty = Value Prelude.Bool
  set newValue LoggingConfigurationProperty {..}
    = LoggingConfigurationProperty
        {includeExecutionData = Prelude.pure newValue, ..}
instance Property "Level" LoggingConfigurationProperty where
  type PropertyType "Level" LoggingConfigurationProperty = Value Prelude.Text
  set newValue LoggingConfigurationProperty {..}
    = LoggingConfigurationProperty {level = Prelude.pure newValue, ..}