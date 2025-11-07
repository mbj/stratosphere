module Stratosphere.Bedrock.DataSource.WebCrawlerLimitsProperty (
        WebCrawlerLimitsProperty(..), mkWebCrawlerLimitsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WebCrawlerLimitsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-webcrawlerlimits.html>
    WebCrawlerLimitsProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-webcrawlerlimits.html#cfn-bedrock-datasource-webcrawlerlimits-maxpages>
                              maxPages :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-webcrawlerlimits.html#cfn-bedrock-datasource-webcrawlerlimits-ratelimit>
                              rateLimit :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebCrawlerLimitsProperty :: WebCrawlerLimitsProperty
mkWebCrawlerLimitsProperty
  = WebCrawlerLimitsProperty
      {haddock_workaround_ = (), maxPages = Prelude.Nothing,
       rateLimit = Prelude.Nothing}
instance ToResourceProperties WebCrawlerLimitsProperty where
  toResourceProperties WebCrawlerLimitsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.WebCrawlerLimits",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxPages" Prelude.<$> maxPages,
                            (JSON..=) "RateLimit" Prelude.<$> rateLimit])}
instance JSON.ToJSON WebCrawlerLimitsProperty where
  toJSON WebCrawlerLimitsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxPages" Prelude.<$> maxPages,
               (JSON..=) "RateLimit" Prelude.<$> rateLimit]))
instance Property "MaxPages" WebCrawlerLimitsProperty where
  type PropertyType "MaxPages" WebCrawlerLimitsProperty = Value Prelude.Integer
  set newValue WebCrawlerLimitsProperty {..}
    = WebCrawlerLimitsProperty {maxPages = Prelude.pure newValue, ..}
instance Property "RateLimit" WebCrawlerLimitsProperty where
  type PropertyType "RateLimit" WebCrawlerLimitsProperty = Value Prelude.Integer
  set newValue WebCrawlerLimitsProperty {..}
    = WebCrawlerLimitsProperty {rateLimit = Prelude.pure newValue, ..}