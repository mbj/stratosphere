module Stratosphere.APS.Workspace.LoggingDestinationProperty (
        module Exports, LoggingDestinationProperty(..),
        mkLoggingDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.APS.Workspace.CloudWatchLogDestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.APS.Workspace.LoggingFilterProperty as Exports
import Stratosphere.ResourceProperties
data LoggingDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-loggingdestination.html>
    LoggingDestinationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-loggingdestination.html#cfn-aps-workspace-loggingdestination-cloudwatchlogs>
                                cloudWatchLogs :: CloudWatchLogDestinationProperty,
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-loggingdestination.html#cfn-aps-workspace-loggingdestination-filters>
                                filters :: LoggingFilterProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingDestinationProperty ::
  CloudWatchLogDestinationProperty
  -> LoggingFilterProperty -> LoggingDestinationProperty
mkLoggingDestinationProperty cloudWatchLogs filters
  = LoggingDestinationProperty
      {haddock_workaround_ = (), cloudWatchLogs = cloudWatchLogs,
       filters = filters}
instance ToResourceProperties LoggingDestinationProperty where
  toResourceProperties LoggingDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::Workspace.LoggingDestination",
         supportsTags = Prelude.False,
         properties = ["CloudWatchLogs" JSON..= cloudWatchLogs,
                       "Filters" JSON..= filters]}
instance JSON.ToJSON LoggingDestinationProperty where
  toJSON LoggingDestinationProperty {..}
    = JSON.object
        ["CloudWatchLogs" JSON..= cloudWatchLogs,
         "Filters" JSON..= filters]
instance Property "CloudWatchLogs" LoggingDestinationProperty where
  type PropertyType "CloudWatchLogs" LoggingDestinationProperty = CloudWatchLogDestinationProperty
  set newValue LoggingDestinationProperty {..}
    = LoggingDestinationProperty {cloudWatchLogs = newValue, ..}
instance Property "Filters" LoggingDestinationProperty where
  type PropertyType "Filters" LoggingDestinationProperty = LoggingFilterProperty
  set newValue LoggingDestinationProperty {..}
    = LoggingDestinationProperty {filters = newValue, ..}