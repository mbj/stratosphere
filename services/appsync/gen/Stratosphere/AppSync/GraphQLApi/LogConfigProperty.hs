module Stratosphere.AppSync.GraphQLApi.LogConfigProperty (
        LogConfigProperty(..), mkLogConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogConfigProperty
  = LogConfigProperty {cloudWatchLogsRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                       excludeVerboseContent :: (Prelude.Maybe (Value Prelude.Bool)),
                       fieldLogLevel :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogConfigProperty :: LogConfigProperty
mkLogConfigProperty
  = LogConfigProperty
      {cloudWatchLogsRoleArn = Prelude.Nothing,
       excludeVerboseContent = Prelude.Nothing,
       fieldLogLevel = Prelude.Nothing}
instance ToResourceProperties LogConfigProperty where
  toResourceProperties LogConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::GraphQLApi.LogConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudWatchLogsRoleArn"
                              Prelude.<$> cloudWatchLogsRoleArn,
                            (JSON..=) "ExcludeVerboseContent"
                              Prelude.<$> excludeVerboseContent,
                            (JSON..=) "FieldLogLevel" Prelude.<$> fieldLogLevel])}
instance JSON.ToJSON LogConfigProperty where
  toJSON LogConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchLogsRoleArn"
                 Prelude.<$> cloudWatchLogsRoleArn,
               (JSON..=) "ExcludeVerboseContent"
                 Prelude.<$> excludeVerboseContent,
               (JSON..=) "FieldLogLevel" Prelude.<$> fieldLogLevel]))
instance Property "CloudWatchLogsRoleArn" LogConfigProperty where
  type PropertyType "CloudWatchLogsRoleArn" LogConfigProperty = Value Prelude.Text
  set newValue LogConfigProperty {..}
    = LogConfigProperty
        {cloudWatchLogsRoleArn = Prelude.pure newValue, ..}
instance Property "ExcludeVerboseContent" LogConfigProperty where
  type PropertyType "ExcludeVerboseContent" LogConfigProperty = Value Prelude.Bool
  set newValue LogConfigProperty {..}
    = LogConfigProperty
        {excludeVerboseContent = Prelude.pure newValue, ..}
instance Property "FieldLogLevel" LogConfigProperty where
  type PropertyType "FieldLogLevel" LogConfigProperty = Value Prelude.Text
  set newValue LogConfigProperty {..}
    = LogConfigProperty {fieldLogLevel = Prelude.pure newValue, ..}