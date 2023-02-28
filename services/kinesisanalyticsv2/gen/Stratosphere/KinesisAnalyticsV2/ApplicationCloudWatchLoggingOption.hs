module Stratosphere.KinesisAnalyticsV2.ApplicationCloudWatchLoggingOption (
        module Exports, ApplicationCloudWatchLoggingOption(..),
        mkApplicationCloudWatchLoggingOption
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.ApplicationCloudWatchLoggingOption.CloudWatchLoggingOptionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationCloudWatchLoggingOption
  = ApplicationCloudWatchLoggingOption {applicationName :: (Value Prelude.Text),
                                        cloudWatchLoggingOption :: CloudWatchLoggingOptionProperty}
mkApplicationCloudWatchLoggingOption ::
  Value Prelude.Text
  -> CloudWatchLoggingOptionProperty
     -> ApplicationCloudWatchLoggingOption
mkApplicationCloudWatchLoggingOption
  applicationName
  cloudWatchLoggingOption
  = ApplicationCloudWatchLoggingOption
      {applicationName = applicationName,
       cloudWatchLoggingOption = cloudWatchLoggingOption}
instance ToResourceProperties ApplicationCloudWatchLoggingOption where
  toResourceProperties ApplicationCloudWatchLoggingOption {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::ApplicationCloudWatchLoggingOption",
         supportsTags = Prelude.False,
         properties = ["ApplicationName" JSON..= applicationName,
                       "CloudWatchLoggingOption" JSON..= cloudWatchLoggingOption]}
instance JSON.ToJSON ApplicationCloudWatchLoggingOption where
  toJSON ApplicationCloudWatchLoggingOption {..}
    = JSON.object
        ["ApplicationName" JSON..= applicationName,
         "CloudWatchLoggingOption" JSON..= cloudWatchLoggingOption]
instance Property "ApplicationName" ApplicationCloudWatchLoggingOption where
  type PropertyType "ApplicationName" ApplicationCloudWatchLoggingOption = Value Prelude.Text
  set newValue ApplicationCloudWatchLoggingOption {..}
    = ApplicationCloudWatchLoggingOption
        {applicationName = newValue, ..}
instance Property "CloudWatchLoggingOption" ApplicationCloudWatchLoggingOption where
  type PropertyType "CloudWatchLoggingOption" ApplicationCloudWatchLoggingOption = CloudWatchLoggingOptionProperty
  set newValue ApplicationCloudWatchLoggingOption {..}
    = ApplicationCloudWatchLoggingOption
        {cloudWatchLoggingOption = newValue, ..}