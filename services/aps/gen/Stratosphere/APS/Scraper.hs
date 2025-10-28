module Stratosphere.APS.Scraper (
        module Exports, Scraper(..), mkScraper
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.APS.Scraper.DestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.APS.Scraper.ScrapeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.APS.Scraper.SourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Scraper
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-scraper.html>
    Scraper {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-scraper.html#cfn-aps-scraper-alias>
             alias :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-scraper.html#cfn-aps-scraper-destination>
             destination :: DestinationProperty,
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-scraper.html#cfn-aps-scraper-scrapeconfiguration>
             scrapeConfiguration :: ScrapeConfigurationProperty,
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-scraper.html#cfn-aps-scraper-source>
             source :: SourceProperty,
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-scraper.html#cfn-aps-scraper-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScraper ::
  DestinationProperty
  -> ScrapeConfigurationProperty -> SourceProperty -> Scraper
mkScraper destination scrapeConfiguration source
  = Scraper
      {haddock_workaround_ = (), destination = destination,
       scrapeConfiguration = scrapeConfiguration, source = source,
       alias = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Scraper where
  toResourceProperties Scraper {..}
    = ResourceProperties
        {awsType = "AWS::APS::Scraper", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Destination" JSON..= destination,
                            "ScrapeConfiguration" JSON..= scrapeConfiguration,
                            "Source" JSON..= source]
                           (Prelude.catMaybes
                              [(JSON..=) "Alias" Prelude.<$> alias,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Scraper where
  toJSON Scraper {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Destination" JSON..= destination,
               "ScrapeConfiguration" JSON..= scrapeConfiguration,
               "Source" JSON..= source]
              (Prelude.catMaybes
                 [(JSON..=) "Alias" Prelude.<$> alias,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Alias" Scraper where
  type PropertyType "Alias" Scraper = Value Prelude.Text
  set newValue Scraper {..}
    = Scraper {alias = Prelude.pure newValue, ..}
instance Property "Destination" Scraper where
  type PropertyType "Destination" Scraper = DestinationProperty
  set newValue Scraper {..} = Scraper {destination = newValue, ..}
instance Property "ScrapeConfiguration" Scraper where
  type PropertyType "ScrapeConfiguration" Scraper = ScrapeConfigurationProperty
  set newValue Scraper {..}
    = Scraper {scrapeConfiguration = newValue, ..}
instance Property "Source" Scraper where
  type PropertyType "Source" Scraper = SourceProperty
  set newValue Scraper {..} = Scraper {source = newValue, ..}
instance Property "Tags" Scraper where
  type PropertyType "Tags" Scraper = [Tag]
  set newValue Scraper {..}
    = Scraper {tags = Prelude.pure newValue, ..}