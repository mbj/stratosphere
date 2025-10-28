module Stratosphere.ElastiCache.CacheCluster.LogDeliveryConfigurationRequestProperty (
        module Exports, LogDeliveryConfigurationRequestProperty(..),
        mkLogDeliveryConfigurationRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElastiCache.CacheCluster.DestinationDetailsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogDeliveryConfigurationRequestProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cachecluster-logdeliveryconfigurationrequest.html>
    LogDeliveryConfigurationRequestProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cachecluster-logdeliveryconfigurationrequest.html#cfn-elasticache-cachecluster-logdeliveryconfigurationrequest-destinationdetails>
                                             destinationDetails :: DestinationDetailsProperty,
                                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cachecluster-logdeliveryconfigurationrequest.html#cfn-elasticache-cachecluster-logdeliveryconfigurationrequest-destinationtype>
                                             destinationType :: (Value Prelude.Text),
                                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cachecluster-logdeliveryconfigurationrequest.html#cfn-elasticache-cachecluster-logdeliveryconfigurationrequest-logformat>
                                             logFormat :: (Value Prelude.Text),
                                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cachecluster-logdeliveryconfigurationrequest.html#cfn-elasticache-cachecluster-logdeliveryconfigurationrequest-logtype>
                                             logType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogDeliveryConfigurationRequestProperty ::
  DestinationDetailsProperty
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> LogDeliveryConfigurationRequestProperty
mkLogDeliveryConfigurationRequestProperty
  destinationDetails
  destinationType
  logFormat
  logType
  = LogDeliveryConfigurationRequestProperty
      {destinationDetails = destinationDetails,
       destinationType = destinationType, logFormat = logFormat,
       logType = logType}
instance ToResourceProperties LogDeliveryConfigurationRequestProperty where
  toResourceProperties LogDeliveryConfigurationRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::CacheCluster.LogDeliveryConfigurationRequest",
         supportsTags = Prelude.False,
         properties = ["DestinationDetails" JSON..= destinationDetails,
                       "DestinationType" JSON..= destinationType,
                       "LogFormat" JSON..= logFormat, "LogType" JSON..= logType]}
instance JSON.ToJSON LogDeliveryConfigurationRequestProperty where
  toJSON LogDeliveryConfigurationRequestProperty {..}
    = JSON.object
        ["DestinationDetails" JSON..= destinationDetails,
         "DestinationType" JSON..= destinationType,
         "LogFormat" JSON..= logFormat, "LogType" JSON..= logType]
instance Property "DestinationDetails" LogDeliveryConfigurationRequestProperty where
  type PropertyType "DestinationDetails" LogDeliveryConfigurationRequestProperty = DestinationDetailsProperty
  set newValue LogDeliveryConfigurationRequestProperty {..}
    = LogDeliveryConfigurationRequestProperty
        {destinationDetails = newValue, ..}
instance Property "DestinationType" LogDeliveryConfigurationRequestProperty where
  type PropertyType "DestinationType" LogDeliveryConfigurationRequestProperty = Value Prelude.Text
  set newValue LogDeliveryConfigurationRequestProperty {..}
    = LogDeliveryConfigurationRequestProperty
        {destinationType = newValue, ..}
instance Property "LogFormat" LogDeliveryConfigurationRequestProperty where
  type PropertyType "LogFormat" LogDeliveryConfigurationRequestProperty = Value Prelude.Text
  set newValue LogDeliveryConfigurationRequestProperty {..}
    = LogDeliveryConfigurationRequestProperty
        {logFormat = newValue, ..}
instance Property "LogType" LogDeliveryConfigurationRequestProperty where
  type PropertyType "LogType" LogDeliveryConfigurationRequestProperty = Value Prelude.Text
  set newValue LogDeliveryConfigurationRequestProperty {..}
    = LogDeliveryConfigurationRequestProperty {logType = newValue, ..}