module Stratosphere.Wisdom.KnowledgeBase.CrawlerLimitsProperty (
        CrawlerLimitsProperty(..), mkCrawlerLimitsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CrawlerLimitsProperty
  = CrawlerLimitsProperty {rateLimit :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCrawlerLimitsProperty :: CrawlerLimitsProperty
mkCrawlerLimitsProperty
  = CrawlerLimitsProperty {rateLimit = Prelude.Nothing}
instance ToResourceProperties CrawlerLimitsProperty where
  toResourceProperties CrawlerLimitsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::KnowledgeBase.CrawlerLimits",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "RateLimit" Prelude.<$> rateLimit])}
instance JSON.ToJSON CrawlerLimitsProperty where
  toJSON CrawlerLimitsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "RateLimit" Prelude.<$> rateLimit]))
instance Property "RateLimit" CrawlerLimitsProperty where
  type PropertyType "RateLimit" CrawlerLimitsProperty = Value Prelude.Double
  set newValue CrawlerLimitsProperty {}
    = CrawlerLimitsProperty {rateLimit = Prelude.pure newValue, ..}