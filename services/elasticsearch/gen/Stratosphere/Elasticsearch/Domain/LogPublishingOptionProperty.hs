module Stratosphere.Elasticsearch.Domain.LogPublishingOptionProperty (
        LogPublishingOptionProperty(..), mkLogPublishingOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogPublishingOptionProperty
  = LogPublishingOptionProperty {cloudWatchLogsLogGroupArn :: (Prelude.Maybe (Value Prelude.Text)),
                                 enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogPublishingOptionProperty :: LogPublishingOptionProperty
mkLogPublishingOptionProperty
  = LogPublishingOptionProperty
      {cloudWatchLogsLogGroupArn = Prelude.Nothing,
       enabled = Prelude.Nothing}
instance ToResourceProperties LogPublishingOptionProperty where
  toResourceProperties LogPublishingOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Elasticsearch::Domain.LogPublishingOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudWatchLogsLogGroupArn"
                              Prelude.<$> cloudWatchLogsLogGroupArn,
                            (JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON LogPublishingOptionProperty where
  toJSON LogPublishingOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchLogsLogGroupArn"
                 Prelude.<$> cloudWatchLogsLogGroupArn,
               (JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "CloudWatchLogsLogGroupArn" LogPublishingOptionProperty where
  type PropertyType "CloudWatchLogsLogGroupArn" LogPublishingOptionProperty = Value Prelude.Text
  set newValue LogPublishingOptionProperty {..}
    = LogPublishingOptionProperty
        {cloudWatchLogsLogGroupArn = Prelude.pure newValue, ..}
instance Property "Enabled" LogPublishingOptionProperty where
  type PropertyType "Enabled" LogPublishingOptionProperty = Value Prelude.Bool
  set newValue LogPublishingOptionProperty {..}
    = LogPublishingOptionProperty {enabled = Prelude.pure newValue, ..}