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
  = LogDeliveryConfigurationProperty {s3Configuration :: S3ConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogDeliveryConfigurationProperty ::
  S3ConfigurationProperty -> LogDeliveryConfigurationProperty
mkLogDeliveryConfigurationProperty s3Configuration
  = LogDeliveryConfigurationProperty
      {s3Configuration = s3Configuration}
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
  set newValue LogDeliveryConfigurationProperty {}
    = LogDeliveryConfigurationProperty {s3Configuration = newValue, ..}