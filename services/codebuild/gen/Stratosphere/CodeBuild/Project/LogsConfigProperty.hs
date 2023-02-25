module Stratosphere.CodeBuild.Project.LogsConfigProperty (
        module Exports, LogsConfigProperty(..), mkLogsConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.CloudWatchLogsConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.S3LogsConfigProperty as Exports
import Stratosphere.ResourceProperties
data LogsConfigProperty
  = LogsConfigProperty {cloudWatchLogs :: (Prelude.Maybe CloudWatchLogsConfigProperty),
                        s3Logs :: (Prelude.Maybe S3LogsConfigProperty)}
mkLogsConfigProperty :: LogsConfigProperty
mkLogsConfigProperty
  = LogsConfigProperty
      {cloudWatchLogs = Prelude.Nothing, s3Logs = Prelude.Nothing}
instance ToResourceProperties LogsConfigProperty where
  toResourceProperties LogsConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.LogsConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudWatchLogs" Prelude.<$> cloudWatchLogs,
                            (JSON..=) "S3Logs" Prelude.<$> s3Logs])}
instance JSON.ToJSON LogsConfigProperty where
  toJSON LogsConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchLogs" Prelude.<$> cloudWatchLogs,
               (JSON..=) "S3Logs" Prelude.<$> s3Logs]))
instance Property "CloudWatchLogs" LogsConfigProperty where
  type PropertyType "CloudWatchLogs" LogsConfigProperty = CloudWatchLogsConfigProperty
  set newValue LogsConfigProperty {..}
    = LogsConfigProperty {cloudWatchLogs = Prelude.pure newValue, ..}
instance Property "S3Logs" LogsConfigProperty where
  type PropertyType "S3Logs" LogsConfigProperty = S3LogsConfigProperty
  set newValue LogsConfigProperty {..}
    = LogsConfigProperty {s3Logs = Prelude.pure newValue, ..}