module Stratosphere.Bedrock.DataSource.SalesforceCrawlerConfigurationProperty (
        module Exports, SalesforceCrawlerConfigurationProperty(..),
        mkSalesforceCrawlerConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.CrawlFilterConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data SalesforceCrawlerConfigurationProperty
  = SalesforceCrawlerConfigurationProperty {filterConfiguration :: (Prelude.Maybe CrawlFilterConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSalesforceCrawlerConfigurationProperty ::
  SalesforceCrawlerConfigurationProperty
mkSalesforceCrawlerConfigurationProperty
  = SalesforceCrawlerConfigurationProperty
      {filterConfiguration = Prelude.Nothing}
instance ToResourceProperties SalesforceCrawlerConfigurationProperty where
  toResourceProperties SalesforceCrawlerConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.SalesforceCrawlerConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FilterConfiguration" Prelude.<$> filterConfiguration])}
instance JSON.ToJSON SalesforceCrawlerConfigurationProperty where
  toJSON SalesforceCrawlerConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FilterConfiguration" Prelude.<$> filterConfiguration]))
instance Property "FilterConfiguration" SalesforceCrawlerConfigurationProperty where
  type PropertyType "FilterConfiguration" SalesforceCrawlerConfigurationProperty = CrawlFilterConfigurationProperty
  set newValue SalesforceCrawlerConfigurationProperty {}
    = SalesforceCrawlerConfigurationProperty
        {filterConfiguration = Prelude.pure newValue, ..}