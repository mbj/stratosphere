module Stratosphere.MSK.Cluster.LoggingInfoProperty (
        module Exports, LoggingInfoProperty(..), mkLoggingInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.Cluster.BrokerLogsProperty as Exports
import Stratosphere.ResourceProperties
data LoggingInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-logginginfo.html>
    LoggingInfoProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-logginginfo.html#cfn-msk-cluster-logginginfo-brokerlogs>
                         brokerLogs :: BrokerLogsProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingInfoProperty :: BrokerLogsProperty -> LoggingInfoProperty
mkLoggingInfoProperty brokerLogs
  = LoggingInfoProperty
      {haddock_workaround_ = (), brokerLogs = brokerLogs}
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
  set newValue LoggingInfoProperty {..}
    = LoggingInfoProperty {brokerLogs = newValue, ..}