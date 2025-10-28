module Stratosphere.Config.ConfigRule.SourceDetailProperty (
        SourceDetailProperty(..), mkSourceDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-sourcedetail.html>
    SourceDetailProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-sourcedetail.html#cfn-config-configrule-sourcedetail-eventsource>
                          eventSource :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-sourcedetail.html#cfn-config-configrule-sourcedetail-maximumexecutionfrequency>
                          maximumExecutionFrequency :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-sourcedetail.html#cfn-config-configrule-sourcedetail-messagetype>
                          messageType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceDetailProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SourceDetailProperty
mkSourceDetailProperty eventSource messageType
  = SourceDetailProperty
      {haddock_workaround_ = (), eventSource = eventSource,
       messageType = messageType,
       maximumExecutionFrequency = Prelude.Nothing}
instance ToResourceProperties SourceDetailProperty where
  toResourceProperties SourceDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::ConfigRule.SourceDetail",
         supportsTags = Prelude.False,
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