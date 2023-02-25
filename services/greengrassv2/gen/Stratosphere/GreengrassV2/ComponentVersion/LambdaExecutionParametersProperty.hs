module Stratosphere.GreengrassV2.ComponentVersion.LambdaExecutionParametersProperty (
        module Exports, LambdaExecutionParametersProperty(..),
        mkLambdaExecutionParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GreengrassV2.ComponentVersion.LambdaEventSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.GreengrassV2.ComponentVersion.LambdaLinuxProcessParamsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaExecutionParametersProperty
  = LambdaExecutionParametersProperty {environmentVariables :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                       eventSources :: (Prelude.Maybe [LambdaEventSourceProperty]),
                                       execArgs :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                       inputPayloadEncodingType :: (Prelude.Maybe (Value Prelude.Text)),
                                       linuxProcessParams :: (Prelude.Maybe LambdaLinuxProcessParamsProperty),
                                       maxIdleTimeInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                       maxInstancesCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                       maxQueueSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                       pinned :: (Prelude.Maybe (Value Prelude.Bool)),
                                       statusTimeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                       timeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
mkLambdaExecutionParametersProperty ::
  LambdaExecutionParametersProperty
mkLambdaExecutionParametersProperty
  = LambdaExecutionParametersProperty
      {environmentVariables = Prelude.Nothing,
       eventSources = Prelude.Nothing, execArgs = Prelude.Nothing,
       inputPayloadEncodingType = Prelude.Nothing,
       linuxProcessParams = Prelude.Nothing,
       maxIdleTimeInSeconds = Prelude.Nothing,
       maxInstancesCount = Prelude.Nothing,
       maxQueueSize = Prelude.Nothing, pinned = Prelude.Nothing,
       statusTimeoutInSeconds = Prelude.Nothing,
       timeoutInSeconds = Prelude.Nothing}
instance ToResourceProperties LambdaExecutionParametersProperty where
  toResourceProperties LambdaExecutionParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::ComponentVersion.LambdaExecutionParameters",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnvironmentVariables" Prelude.<$> environmentVariables,
                            (JSON..=) "EventSources" Prelude.<$> eventSources,
                            (JSON..=) "ExecArgs" Prelude.<$> execArgs,
                            (JSON..=) "InputPayloadEncodingType"
                              Prelude.<$> inputPayloadEncodingType,
                            (JSON..=) "LinuxProcessParams" Prelude.<$> linuxProcessParams,
                            (JSON..=) "MaxIdleTimeInSeconds" Prelude.<$> maxIdleTimeInSeconds,
                            (JSON..=) "MaxInstancesCount" Prelude.<$> maxInstancesCount,
                            (JSON..=) "MaxQueueSize" Prelude.<$> maxQueueSize,
                            (JSON..=) "Pinned" Prelude.<$> pinned,
                            (JSON..=) "StatusTimeoutInSeconds"
                              Prelude.<$> statusTimeoutInSeconds,
                            (JSON..=) "TimeoutInSeconds" Prelude.<$> timeoutInSeconds])}
instance JSON.ToJSON LambdaExecutionParametersProperty where
  toJSON LambdaExecutionParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnvironmentVariables" Prelude.<$> environmentVariables,
               (JSON..=) "EventSources" Prelude.<$> eventSources,
               (JSON..=) "ExecArgs" Prelude.<$> execArgs,
               (JSON..=) "InputPayloadEncodingType"
                 Prelude.<$> inputPayloadEncodingType,
               (JSON..=) "LinuxProcessParams" Prelude.<$> linuxProcessParams,
               (JSON..=) "MaxIdleTimeInSeconds" Prelude.<$> maxIdleTimeInSeconds,
               (JSON..=) "MaxInstancesCount" Prelude.<$> maxInstancesCount,
               (JSON..=) "MaxQueueSize" Prelude.<$> maxQueueSize,
               (JSON..=) "Pinned" Prelude.<$> pinned,
               (JSON..=) "StatusTimeoutInSeconds"
                 Prelude.<$> statusTimeoutInSeconds,
               (JSON..=) "TimeoutInSeconds" Prelude.<$> timeoutInSeconds]))
instance Property "EnvironmentVariables" LambdaExecutionParametersProperty where
  type PropertyType "EnvironmentVariables" LambdaExecutionParametersProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue LambdaExecutionParametersProperty {..}
    = LambdaExecutionParametersProperty
        {environmentVariables = Prelude.pure newValue, ..}
instance Property "EventSources" LambdaExecutionParametersProperty where
  type PropertyType "EventSources" LambdaExecutionParametersProperty = [LambdaEventSourceProperty]
  set newValue LambdaExecutionParametersProperty {..}
    = LambdaExecutionParametersProperty
        {eventSources = Prelude.pure newValue, ..}
instance Property "ExecArgs" LambdaExecutionParametersProperty where
  type PropertyType "ExecArgs" LambdaExecutionParametersProperty = ValueList (Value Prelude.Text)
  set newValue LambdaExecutionParametersProperty {..}
    = LambdaExecutionParametersProperty
        {execArgs = Prelude.pure newValue, ..}
instance Property "InputPayloadEncodingType" LambdaExecutionParametersProperty where
  type PropertyType "InputPayloadEncodingType" LambdaExecutionParametersProperty = Value Prelude.Text
  set newValue LambdaExecutionParametersProperty {..}
    = LambdaExecutionParametersProperty
        {inputPayloadEncodingType = Prelude.pure newValue, ..}
instance Property "LinuxProcessParams" LambdaExecutionParametersProperty where
  type PropertyType "LinuxProcessParams" LambdaExecutionParametersProperty = LambdaLinuxProcessParamsProperty
  set newValue LambdaExecutionParametersProperty {..}
    = LambdaExecutionParametersProperty
        {linuxProcessParams = Prelude.pure newValue, ..}
instance Property "MaxIdleTimeInSeconds" LambdaExecutionParametersProperty where
  type PropertyType "MaxIdleTimeInSeconds" LambdaExecutionParametersProperty = Value Prelude.Integer
  set newValue LambdaExecutionParametersProperty {..}
    = LambdaExecutionParametersProperty
        {maxIdleTimeInSeconds = Prelude.pure newValue, ..}
instance Property "MaxInstancesCount" LambdaExecutionParametersProperty where
  type PropertyType "MaxInstancesCount" LambdaExecutionParametersProperty = Value Prelude.Integer
  set newValue LambdaExecutionParametersProperty {..}
    = LambdaExecutionParametersProperty
        {maxInstancesCount = Prelude.pure newValue, ..}
instance Property "MaxQueueSize" LambdaExecutionParametersProperty where
  type PropertyType "MaxQueueSize" LambdaExecutionParametersProperty = Value Prelude.Integer
  set newValue LambdaExecutionParametersProperty {..}
    = LambdaExecutionParametersProperty
        {maxQueueSize = Prelude.pure newValue, ..}
instance Property "Pinned" LambdaExecutionParametersProperty where
  type PropertyType "Pinned" LambdaExecutionParametersProperty = Value Prelude.Bool
  set newValue LambdaExecutionParametersProperty {..}
    = LambdaExecutionParametersProperty
        {pinned = Prelude.pure newValue, ..}
instance Property "StatusTimeoutInSeconds" LambdaExecutionParametersProperty where
  type PropertyType "StatusTimeoutInSeconds" LambdaExecutionParametersProperty = Value Prelude.Integer
  set newValue LambdaExecutionParametersProperty {..}
    = LambdaExecutionParametersProperty
        {statusTimeoutInSeconds = Prelude.pure newValue, ..}
instance Property "TimeoutInSeconds" LambdaExecutionParametersProperty where
  type PropertyType "TimeoutInSeconds" LambdaExecutionParametersProperty = Value Prelude.Integer
  set newValue LambdaExecutionParametersProperty {..}
    = LambdaExecutionParametersProperty
        {timeoutInSeconds = Prelude.pure newValue, ..}