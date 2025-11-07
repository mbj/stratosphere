module Stratosphere.APS.Scraper.ScraperLoggingConfigurationProperty (
        module Exports, ScraperLoggingConfigurationProperty(..),
        mkScraperLoggingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.APS.Scraper.ScraperComponentProperty as Exports
import {-# SOURCE #-} Stratosphere.APS.Scraper.ScraperLoggingDestinationProperty as Exports
import Stratosphere.ResourceProperties
data ScraperLoggingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-scraperloggingconfiguration.html>
    ScraperLoggingConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-scraperloggingconfiguration.html#cfn-aps-scraper-scraperloggingconfiguration-loggingdestination>
                                         loggingDestination :: ScraperLoggingDestinationProperty,
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-scraperloggingconfiguration.html#cfn-aps-scraper-scraperloggingconfiguration-scrapercomponents>
                                         scraperComponents :: [ScraperComponentProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScraperLoggingConfigurationProperty ::
  ScraperLoggingDestinationProperty
  -> [ScraperComponentProperty]
     -> ScraperLoggingConfigurationProperty
mkScraperLoggingConfigurationProperty
  loggingDestination
  scraperComponents
  = ScraperLoggingConfigurationProperty
      {haddock_workaround_ = (), loggingDestination = loggingDestination,
       scraperComponents = scraperComponents}
instance ToResourceProperties ScraperLoggingConfigurationProperty where
  toResourceProperties ScraperLoggingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::Scraper.ScraperLoggingConfiguration",
         supportsTags = Prelude.False,
         properties = ["LoggingDestination" JSON..= loggingDestination,
                       "ScraperComponents" JSON..= scraperComponents]}
instance JSON.ToJSON ScraperLoggingConfigurationProperty where
  toJSON ScraperLoggingConfigurationProperty {..}
    = JSON.object
        ["LoggingDestination" JSON..= loggingDestination,
         "ScraperComponents" JSON..= scraperComponents]
instance Property "LoggingDestination" ScraperLoggingConfigurationProperty where
  type PropertyType "LoggingDestination" ScraperLoggingConfigurationProperty = ScraperLoggingDestinationProperty
  set newValue ScraperLoggingConfigurationProperty {..}
    = ScraperLoggingConfigurationProperty
        {loggingDestination = newValue, ..}
instance Property "ScraperComponents" ScraperLoggingConfigurationProperty where
  type PropertyType "ScraperComponents" ScraperLoggingConfigurationProperty = [ScraperComponentProperty]
  set newValue ScraperLoggingConfigurationProperty {..}
    = ScraperLoggingConfigurationProperty
        {scraperComponents = newValue, ..}