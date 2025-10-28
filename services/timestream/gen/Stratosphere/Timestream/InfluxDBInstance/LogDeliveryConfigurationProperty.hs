module Stratosphere.Timestream.InfluxDBInstance.LogDeliveryConfigurationProperty (
        module Exports, LogDeliveryConfigurationProperty(..),
        mkLogDeliveryConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Timestream.InfluxDBInstance.S3ConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data LogDeliveryConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-influxdbinstance-logdeliveryconfiguration.html>
    LogDeliveryConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-influxdbinstance-logdeliveryconfiguration.html#cfn-timestream-influxdbinstance-logdeliveryconfiguration-s3configuration>
                                      s3Configuration :: S3ConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogDeliveryConfigurationProperty ::
  S3ConfigurationProperty -> LogDeliveryConfigurationProperty
mkLogDeliveryConfigurationProperty s3Configuration
  = LogDeliveryConfigurationProperty
      {haddock_workaround_ = (), s3Configuration = s3Configuration}
instance ToResourceProperties LogDeliveryConfigurationProperty where
  toResourceProperties LogDeliveryConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::InfluxDBInstance.LogDeliveryConfiguration",
         supportsTags = Prelude.False,
         properties = ["S3Configuration" JSON..= s3Configuration]}
instance JSON.ToJSON LogDeliveryConfigurationProperty where
  toJSON LogDeliveryConfigurationProperty {..}
    = JSON.object ["S3Configuration" JSON..= s3Configuration]
instance Property "S3Configuration" LogDeliveryConfigurationProperty where
  type PropertyType "S3Configuration" LogDeliveryConfigurationProperty = S3ConfigurationProperty
  set newValue LogDeliveryConfigurationProperty {..}
    = LogDeliveryConfigurationProperty {s3Configuration = newValue, ..}