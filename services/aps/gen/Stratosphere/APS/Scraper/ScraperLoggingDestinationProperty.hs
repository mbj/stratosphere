module Stratosphere.APS.Scraper.ScraperLoggingDestinationProperty (
        module Exports, ScraperLoggingDestinationProperty(..),
        mkScraperLoggingDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.APS.Scraper.CloudWatchLogDestinationProperty as Exports
import Stratosphere.ResourceProperties
data ScraperLoggingDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-scraperloggingdestination.html>
    ScraperLoggingDestinationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-scraperloggingdestination.html#cfn-aps-scraper-scraperloggingdestination-cloudwatchlogs>
                                       cloudWatchLogs :: (Prelude.Maybe CloudWatchLogDestinationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScraperLoggingDestinationProperty ::
  ScraperLoggingDestinationProperty
mkScraperLoggingDestinationProperty
  = ScraperLoggingDestinationProperty
      {haddock_workaround_ = (), cloudWatchLogs = Prelude.Nothing}
instance ToResourceProperties ScraperLoggingDestinationProperty where
  toResourceProperties ScraperLoggingDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::Scraper.ScraperLoggingDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudWatchLogs" Prelude.<$> cloudWatchLogs])}
instance JSON.ToJSON ScraperLoggingDestinationProperty where
  toJSON ScraperLoggingDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchLogs" Prelude.<$> cloudWatchLogs]))
instance Property "CloudWatchLogs" ScraperLoggingDestinationProperty where
  type PropertyType "CloudWatchLogs" ScraperLoggingDestinationProperty = CloudWatchLogDestinationProperty
  set newValue ScraperLoggingDestinationProperty {..}
    = ScraperLoggingDestinationProperty
        {cloudWatchLogs = Prelude.pure newValue, ..}