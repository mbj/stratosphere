module Stratosphere.Timestream.ScheduledQuery.ErrorReportConfigurationProperty (
        module Exports, ErrorReportConfigurationProperty(..),
        mkErrorReportConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Timestream.ScheduledQuery.S3ConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ErrorReportConfigurationProperty
  = ErrorReportConfigurationProperty {s3Configuration :: S3ConfigurationProperty}
mkErrorReportConfigurationProperty ::
  S3ConfigurationProperty -> ErrorReportConfigurationProperty
mkErrorReportConfigurationProperty s3Configuration
  = ErrorReportConfigurationProperty
      {s3Configuration = s3Configuration}
instance ToResourceProperties ErrorReportConfigurationProperty where
  toResourceProperties ErrorReportConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::ScheduledQuery.ErrorReportConfiguration",
         properties = ["S3Configuration" JSON..= s3Configuration]}
instance JSON.ToJSON ErrorReportConfigurationProperty where
  toJSON ErrorReportConfigurationProperty {..}
    = JSON.object ["S3Configuration" JSON..= s3Configuration]
instance Property "S3Configuration" ErrorReportConfigurationProperty where
  type PropertyType "S3Configuration" ErrorReportConfigurationProperty = S3ConfigurationProperty
  set newValue ErrorReportConfigurationProperty {}
    = ErrorReportConfigurationProperty {s3Configuration = newValue, ..}