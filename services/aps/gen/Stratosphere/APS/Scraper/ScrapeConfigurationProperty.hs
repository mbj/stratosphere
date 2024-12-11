module Stratosphere.APS.Scraper.ScrapeConfigurationProperty (
        ScrapeConfigurationProperty(..), mkScrapeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScrapeConfigurationProperty
  = ScrapeConfigurationProperty {configurationBlob :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScrapeConfigurationProperty ::
  Value Prelude.Text -> ScrapeConfigurationProperty
mkScrapeConfigurationProperty configurationBlob
  = ScrapeConfigurationProperty
      {configurationBlob = configurationBlob}
instance ToResourceProperties ScrapeConfigurationProperty where
  toResourceProperties ScrapeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::Scraper.ScrapeConfiguration",
         supportsTags = Prelude.False,
         properties = ["ConfigurationBlob" JSON..= configurationBlob]}
instance JSON.ToJSON ScrapeConfigurationProperty where
  toJSON ScrapeConfigurationProperty {..}
    = JSON.object ["ConfigurationBlob" JSON..= configurationBlob]
instance Property "ConfigurationBlob" ScrapeConfigurationProperty where
  type PropertyType "ConfigurationBlob" ScrapeConfigurationProperty = Value Prelude.Text
  set newValue ScrapeConfigurationProperty {}
    = ScrapeConfigurationProperty {configurationBlob = newValue, ..}