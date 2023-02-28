module Stratosphere.Lex.BotAlias.CloudWatchLogGroupLogDestinationProperty (
        CloudWatchLogGroupLogDestinationProperty(..),
        mkCloudWatchLogGroupLogDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchLogGroupLogDestinationProperty
  = CloudWatchLogGroupLogDestinationProperty {cloudWatchLogGroupArn :: (Value Prelude.Text),
                                              logPrefix :: (Value Prelude.Text)}
mkCloudWatchLogGroupLogDestinationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CloudWatchLogGroupLogDestinationProperty
mkCloudWatchLogGroupLogDestinationProperty
  cloudWatchLogGroupArn
  logPrefix
  = CloudWatchLogGroupLogDestinationProperty
      {cloudWatchLogGroupArn = cloudWatchLogGroupArn,
       logPrefix = logPrefix}
instance ToResourceProperties CloudWatchLogGroupLogDestinationProperty where
  toResourceProperties CloudWatchLogGroupLogDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::BotAlias.CloudWatchLogGroupLogDestination",
         supportsTags = Prelude.False,
         properties = ["CloudWatchLogGroupArn"
                         JSON..= cloudWatchLogGroupArn,
                       "LogPrefix" JSON..= logPrefix]}
instance JSON.ToJSON CloudWatchLogGroupLogDestinationProperty where
  toJSON CloudWatchLogGroupLogDestinationProperty {..}
    = JSON.object
        ["CloudWatchLogGroupArn" JSON..= cloudWatchLogGroupArn,
         "LogPrefix" JSON..= logPrefix]
instance Property "CloudWatchLogGroupArn" CloudWatchLogGroupLogDestinationProperty where
  type PropertyType "CloudWatchLogGroupArn" CloudWatchLogGroupLogDestinationProperty = Value Prelude.Text
  set newValue CloudWatchLogGroupLogDestinationProperty {..}
    = CloudWatchLogGroupLogDestinationProperty
        {cloudWatchLogGroupArn = newValue, ..}
instance Property "LogPrefix" CloudWatchLogGroupLogDestinationProperty where
  type PropertyType "LogPrefix" CloudWatchLogGroupLogDestinationProperty = Value Prelude.Text
  set newValue CloudWatchLogGroupLogDestinationProperty {..}
    = CloudWatchLogGroupLogDestinationProperty
        {logPrefix = newValue, ..}