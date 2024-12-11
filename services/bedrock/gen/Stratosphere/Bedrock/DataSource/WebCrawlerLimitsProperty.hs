module Stratosphere.Bedrock.DataSource.WebCrawlerLimitsProperty (
        WebCrawlerLimitsProperty(..), mkWebCrawlerLimitsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WebCrawlerLimitsProperty
  = WebCrawlerLimitsProperty {rateLimit :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebCrawlerLimitsProperty :: WebCrawlerLimitsProperty
mkWebCrawlerLimitsProperty
  = WebCrawlerLimitsProperty {rateLimit = Prelude.Nothing}
instance ToResourceProperties WebCrawlerLimitsProperty where
  toResourceProperties WebCrawlerLimitsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.WebCrawlerLimits",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "RateLimit" Prelude.<$> rateLimit])}
instance JSON.ToJSON WebCrawlerLimitsProperty where
  toJSON WebCrawlerLimitsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "RateLimit" Prelude.<$> rateLimit]))
instance Property "RateLimit" WebCrawlerLimitsProperty where
  type PropertyType "RateLimit" WebCrawlerLimitsProperty = Value Prelude.Integer
  set newValue WebCrawlerLimitsProperty {}
    = WebCrawlerLimitsProperty {rateLimit = Prelude.pure newValue, ..}