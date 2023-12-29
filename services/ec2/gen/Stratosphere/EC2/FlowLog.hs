module Stratosphere.EC2.FlowLog (
        module Exports, FlowLog(..), mkFlowLog
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.FlowLog.DestinationOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data FlowLog
  = FlowLog {deliverLogsPermissionArn :: (Prelude.Maybe (Value Prelude.Text)),
             destinationOptions :: (Prelude.Maybe DestinationOptionsProperty),
             logDestination :: (Prelude.Maybe (Value Prelude.Text)),
             logDestinationType :: (Prelude.Maybe (Value Prelude.Text)),
             logFormat :: (Prelude.Maybe (Value Prelude.Text)),
             logGroupName :: (Prelude.Maybe (Value Prelude.Text)),
             maxAggregationInterval :: (Prelude.Maybe (Value Prelude.Integer)),
             resourceId :: (Value Prelude.Text),
             resourceType :: (Value Prelude.Text),
             tags :: (Prelude.Maybe [Tag]),
             trafficType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlowLog :: Value Prelude.Text -> Value Prelude.Text -> FlowLog
mkFlowLog resourceId resourceType
  = FlowLog
      {resourceId = resourceId, resourceType = resourceType,
       deliverLogsPermissionArn = Prelude.Nothing,
       destinationOptions = Prelude.Nothing,
       logDestination = Prelude.Nothing,
       logDestinationType = Prelude.Nothing, logFormat = Prelude.Nothing,
       logGroupName = Prelude.Nothing,
       maxAggregationInterval = Prelude.Nothing, tags = Prelude.Nothing,
       trafficType = Prelude.Nothing}
instance ToResourceProperties FlowLog where
  toResourceProperties FlowLog {..}
    = ResourceProperties
        {awsType = "AWS::EC2::FlowLog", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResourceId" JSON..= resourceId,
                            "ResourceType" JSON..= resourceType]
                           (Prelude.catMaybes
                              [(JSON..=) "DeliverLogsPermissionArn"
                                 Prelude.<$> deliverLogsPermissionArn,
                               (JSON..=) "DestinationOptions" Prelude.<$> destinationOptions,
                               (JSON..=) "LogDestination" Prelude.<$> logDestination,
                               (JSON..=) "LogDestinationType" Prelude.<$> logDestinationType,
                               (JSON..=) "LogFormat" Prelude.<$> logFormat,
                               (JSON..=) "LogGroupName" Prelude.<$> logGroupName,
                               (JSON..=) "MaxAggregationInterval"
                                 Prelude.<$> maxAggregationInterval,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TrafficType" Prelude.<$> trafficType]))}
instance JSON.ToJSON FlowLog where
  toJSON FlowLog {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourceId" JSON..= resourceId,
               "ResourceType" JSON..= resourceType]
              (Prelude.catMaybes
                 [(JSON..=) "DeliverLogsPermissionArn"
                    Prelude.<$> deliverLogsPermissionArn,
                  (JSON..=) "DestinationOptions" Prelude.<$> destinationOptions,
                  (JSON..=) "LogDestination" Prelude.<$> logDestination,
                  (JSON..=) "LogDestinationType" Prelude.<$> logDestinationType,
                  (JSON..=) "LogFormat" Prelude.<$> logFormat,
                  (JSON..=) "LogGroupName" Prelude.<$> logGroupName,
                  (JSON..=) "MaxAggregationInterval"
                    Prelude.<$> maxAggregationInterval,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TrafficType" Prelude.<$> trafficType])))
instance Property "DeliverLogsPermissionArn" FlowLog where
  type PropertyType "DeliverLogsPermissionArn" FlowLog = Value Prelude.Text
  set newValue FlowLog {..}
    = FlowLog {deliverLogsPermissionArn = Prelude.pure newValue, ..}
instance Property "DestinationOptions" FlowLog where
  type PropertyType "DestinationOptions" FlowLog = DestinationOptionsProperty
  set newValue FlowLog {..}
    = FlowLog {destinationOptions = Prelude.pure newValue, ..}
instance Property "LogDestination" FlowLog where
  type PropertyType "LogDestination" FlowLog = Value Prelude.Text
  set newValue FlowLog {..}
    = FlowLog {logDestination = Prelude.pure newValue, ..}
instance Property "LogDestinationType" FlowLog where
  type PropertyType "LogDestinationType" FlowLog = Value Prelude.Text
  set newValue FlowLog {..}
    = FlowLog {logDestinationType = Prelude.pure newValue, ..}
instance Property "LogFormat" FlowLog where
  type PropertyType "LogFormat" FlowLog = Value Prelude.Text
  set newValue FlowLog {..}
    = FlowLog {logFormat = Prelude.pure newValue, ..}
instance Property "LogGroupName" FlowLog where
  type PropertyType "LogGroupName" FlowLog = Value Prelude.Text
  set newValue FlowLog {..}
    = FlowLog {logGroupName = Prelude.pure newValue, ..}
instance Property "MaxAggregationInterval" FlowLog where
  type PropertyType "MaxAggregationInterval" FlowLog = Value Prelude.Integer
  set newValue FlowLog {..}
    = FlowLog {maxAggregationInterval = Prelude.pure newValue, ..}
instance Property "ResourceId" FlowLog where
  type PropertyType "ResourceId" FlowLog = Value Prelude.Text
  set newValue FlowLog {..} = FlowLog {resourceId = newValue, ..}
instance Property "ResourceType" FlowLog where
  type PropertyType "ResourceType" FlowLog = Value Prelude.Text
  set newValue FlowLog {..} = FlowLog {resourceType = newValue, ..}
instance Property "Tags" FlowLog where
  type PropertyType "Tags" FlowLog = [Tag]
  set newValue FlowLog {..}
    = FlowLog {tags = Prelude.pure newValue, ..}
instance Property "TrafficType" FlowLog where
  type PropertyType "TrafficType" FlowLog = Value Prelude.Text
  set newValue FlowLog {..}
    = FlowLog {trafficType = Prelude.pure newValue, ..}