module Stratosphere.MSK.Cluster.LoggingInfoProperty (
        module Exports, LoggingInfoProperty(..), mkLoggingInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.Cluster.BrokerLogsProperty as Exports
import Stratosphere.ResourceProperties
data LoggingInfoProperty
  = LoggingInfoProperty {brokerLogs :: BrokerLogsProperty}
mkLoggingInfoProperty :: BrokerLogsProperty -> LoggingInfoProperty
mkLoggingInfoProperty brokerLogs
  = LoggingInfoProperty {brokerLogs = brokerLogs}
instance ToResourceProperties LoggingInfoProperty where
  toResourceProperties LoggingInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.LoggingInfo",
         supportsTags = Prelude.False,
         properties = ["BrokerLogs" JSON..= brokerLogs]}
instance JSON.ToJSON LoggingInfoProperty where
  toJSON LoggingInfoProperty {..}
    = JSON.object ["BrokerLogs" JSON..= brokerLogs]
instance Property "BrokerLogs" LoggingInfoProperty where
  type PropertyType "BrokerLogs" LoggingInfoProperty = BrokerLogsProperty
  set newValue LoggingInfoProperty {}
    = LoggingInfoProperty {brokerLogs = newValue, ..}