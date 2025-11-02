module Stratosphere.SNS.Topic.LoggingConfigProperty (
        LoggingConfigProperty(..), mkLoggingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic-loggingconfig.html>
    LoggingConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic-loggingconfig.html#cfn-sns-topic-loggingconfig-failurefeedbackrolearn>
                           failureFeedbackRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic-loggingconfig.html#cfn-sns-topic-loggingconfig-protocol>
                           protocol :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic-loggingconfig.html#cfn-sns-topic-loggingconfig-successfeedbackrolearn>
                           successFeedbackRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic-loggingconfig.html#cfn-sns-topic-loggingconfig-successfeedbacksamplerate>
                           successFeedbackSampleRate :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingConfigProperty ::
  Value Prelude.Text -> LoggingConfigProperty
mkLoggingConfigProperty protocol
  = LoggingConfigProperty
      {haddock_workaround_ = (), protocol = protocol,
       failureFeedbackRoleArn = Prelude.Nothing,
       successFeedbackRoleArn = Prelude.Nothing,
       successFeedbackSampleRate = Prelude.Nothing}
instance ToResourceProperties LoggingConfigProperty where
  toResourceProperties LoggingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SNS::Topic.LoggingConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Protocol" JSON..= protocol]
                           (Prelude.catMaybes
                              [(JSON..=) "FailureFeedbackRoleArn"
                                 Prelude.<$> failureFeedbackRoleArn,
                               (JSON..=) "SuccessFeedbackRoleArn"
                                 Prelude.<$> successFeedbackRoleArn,
                               (JSON..=) "SuccessFeedbackSampleRate"
                                 Prelude.<$> successFeedbackSampleRate]))}
instance JSON.ToJSON LoggingConfigProperty where
  toJSON LoggingConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Protocol" JSON..= protocol]
              (Prelude.catMaybes
                 [(JSON..=) "FailureFeedbackRoleArn"
                    Prelude.<$> failureFeedbackRoleArn,
                  (JSON..=) "SuccessFeedbackRoleArn"
                    Prelude.<$> successFeedbackRoleArn,
                  (JSON..=) "SuccessFeedbackSampleRate"
                    Prelude.<$> successFeedbackSampleRate])))
instance Property "FailureFeedbackRoleArn" LoggingConfigProperty where
  type PropertyType "FailureFeedbackRoleArn" LoggingConfigProperty = Value Prelude.Text
  set newValue LoggingConfigProperty {..}
    = LoggingConfigProperty
        {failureFeedbackRoleArn = Prelude.pure newValue, ..}
instance Property "Protocol" LoggingConfigProperty where
  type PropertyType "Protocol" LoggingConfigProperty = Value Prelude.Text
  set newValue LoggingConfigProperty {..}
    = LoggingConfigProperty {protocol = newValue, ..}
instance Property "SuccessFeedbackRoleArn" LoggingConfigProperty where
  type PropertyType "SuccessFeedbackRoleArn" LoggingConfigProperty = Value Prelude.Text
  set newValue LoggingConfigProperty {..}
    = LoggingConfigProperty
        {successFeedbackRoleArn = Prelude.pure newValue, ..}
instance Property "SuccessFeedbackSampleRate" LoggingConfigProperty where
  type PropertyType "SuccessFeedbackSampleRate" LoggingConfigProperty = Value Prelude.Text
  set newValue LoggingConfigProperty {..}
    = LoggingConfigProperty
        {successFeedbackSampleRate = Prelude.pure newValue, ..}