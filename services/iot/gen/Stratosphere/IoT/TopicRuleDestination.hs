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
  = TopicRuleDestination {httpUrlProperties :: (Prelude.Maybe HttpUrlDestinationSummaryProperty),
                          status :: (Prelude.Maybe (Value Prelude.Text)),
                          vpcProperties :: (Prelude.Maybe VpcDestinationPropertiesProperty)}
mkTopicRuleDestination :: TopicRuleDestination
mkTopicRuleDestination
  = TopicRuleDestination
      {httpUrlProperties = Prelude.Nothing, status = Prelude.Nothing,
       vpcProperties = Prelude.Nothing}
instance ToResourceProperties TopicRuleDestination where
  toResourceProperties TopicRuleDestination {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRuleDestination",
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