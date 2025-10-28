module Stratosphere.IoT.TopicRuleDestination (
        module Exports, TopicRuleDestination(..), mkTopicRuleDestination
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.TopicRuleDestination.HttpUrlDestinationSummaryProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.TopicRuleDestination.VpcDestinationPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicRuleDestination
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-topicruledestination.html>
    TopicRuleDestination {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-topicruledestination.html#cfn-iot-topicruledestination-httpurlproperties>
                          httpUrlProperties :: (Prelude.Maybe HttpUrlDestinationSummaryProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-topicruledestination.html#cfn-iot-topicruledestination-status>
                          status :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-topicruledestination.html#cfn-iot-topicruledestination-vpcproperties>
                          vpcProperties :: (Prelude.Maybe VpcDestinationPropertiesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicRuleDestination :: TopicRuleDestination
mkTopicRuleDestination
  = TopicRuleDestination
      {haddock_workaround_ = (), httpUrlProperties = Prelude.Nothing,
       status = Prelude.Nothing, vpcProperties = Prelude.Nothing}
instance ToResourceProperties TopicRuleDestination where
  toResourceProperties TopicRuleDestination {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRuleDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HttpUrlProperties" Prelude.<$> httpUrlProperties,
                            (JSON..=) "Status" Prelude.<$> status,
                            (JSON..=) "VpcProperties" Prelude.<$> vpcProperties])}
instance JSON.ToJSON TopicRuleDestination where
  toJSON TopicRuleDestination {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HttpUrlProperties" Prelude.<$> httpUrlProperties,
               (JSON..=) "Status" Prelude.<$> status,
               (JSON..=) "VpcProperties" Prelude.<$> vpcProperties]))
instance Property "HttpUrlProperties" TopicRuleDestination where
  type PropertyType "HttpUrlProperties" TopicRuleDestination = HttpUrlDestinationSummaryProperty
  set newValue TopicRuleDestination {..}
    = TopicRuleDestination
        {httpUrlProperties = Prelude.pure newValue, ..}
instance Property "Status" TopicRuleDestination where
  type PropertyType "Status" TopicRuleDestination = Value Prelude.Text
  set newValue TopicRuleDestination {..}
    = TopicRuleDestination {status = Prelude.pure newValue, ..}
instance Property "VpcProperties" TopicRuleDestination where
  type PropertyType "VpcProperties" TopicRuleDestination = VpcDestinationPropertiesProperty
  set newValue TopicRuleDestination {..}
    = TopicRuleDestination {vpcProperties = Prelude.pure newValue, ..}