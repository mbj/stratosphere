module Stratosphere.Config.ConfigRule.SourceDetailProperty (
        SourceDetailProperty(..), mkSourceDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceDetailProperty
  = SourceDetailProperty {eventSource :: (Value Prelude.Text),
                          maximumExecutionFrequency :: (Prelude.Maybe (Value Prelude.Text)),
                          messageType :: (Value Prelude.Text)}
mkSourceDetailProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SourceDetailProperty
mkSourceDetailProperty eventSource messageType
  = SourceDetailProperty
      {eventSource = eventSource, messageType = messageType,
       maximumExecutionFrequency = Prelude.Nothing}
instance ToResourceProperties SourceDetailProperty where
  toResourceProperties SourceDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::ConfigRule.SourceDetail",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EventSource" JSON..= eventSource,
                            "MessageType" JSON..= messageType]
                           (Prelude.catMaybes
                              [(JSON..=) "MaximumExecutionFrequency"
                                 Prelude.<$> maximumExecutionFrequency]))}
instance JSON.ToJSON SourceDetailProperty where
  toJSON SourceDetailProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EventSource" JSON..= eventSource,
               "MessageType" JSON..= messageType]
              (Prelude.catMaybes
                 [(JSON..=) "MaximumExecutionFrequency"
                    Prelude.<$> maximumExecutionFrequency])))
instance Property "EventSource" SourceDetailProperty where
  type PropertyType "EventSource" SourceDetailProperty = Value Prelude.Text
  set newValue SourceDetailProperty {..}
    = SourceDetailProperty {eventSource = newValue, ..}
instance Property "MaximumExecutionFrequency" SourceDetailProperty where
  type PropertyType "MaximumExecutionFrequency" SourceDetailProperty = Value Prelude.Text
  set newValue SourceDetailProperty {..}
    = SourceDetailProperty
        {maximumExecutionFrequency = Prelude.pure newValue, ..}
instance Property "MessageType" SourceDetailProperty where
  type PropertyType "MessageType" SourceDetailProperty = Value Prelude.Text
  set newValue SourceDetailProperty {..}
    = SourceDetailProperty {messageType = newValue, ..}