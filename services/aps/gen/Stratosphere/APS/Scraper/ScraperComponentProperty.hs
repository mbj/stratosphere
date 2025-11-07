module Stratosphere.APS.Scraper.ScraperComponentProperty (
        module Exports, ScraperComponentProperty(..),
        mkScraperComponentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.APS.Scraper.ComponentConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScraperComponentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-scrapercomponent.html>
    ScraperComponentProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-scrapercomponent.html#cfn-aps-scraper-scrapercomponent-config>
                              config :: (Prelude.Maybe ComponentConfigProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-scrapercomponent.html#cfn-aps-scraper-scrapercomponent-type>
                              type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScraperComponentProperty ::
  Value Prelude.Text -> ScraperComponentProperty
mkScraperComponentProperty type'
  = ScraperComponentProperty
      {haddock_workaround_ = (), type' = type', config = Prelude.Nothing}
instance ToResourceProperties ScraperComponentProperty where
  toResourceProperties ScraperComponentProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::Scraper.ScraperComponent",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Config" Prelude.<$> config]))}
instance JSON.ToJSON ScraperComponentProperty where
  toJSON ScraperComponentProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Config" Prelude.<$> config])))
instance Property "Config" ScraperComponentProperty where
  type PropertyType "Config" ScraperComponentProperty = ComponentConfigProperty
  set newValue ScraperComponentProperty {..}
    = ScraperComponentProperty {config = Prelude.pure newValue, ..}
instance Property "Type" ScraperComponentProperty where
  type PropertyType "Type" ScraperComponentProperty = Value Prelude.Text
  set newValue ScraperComponentProperty {..}
    = ScraperComponentProperty {type' = newValue, ..}