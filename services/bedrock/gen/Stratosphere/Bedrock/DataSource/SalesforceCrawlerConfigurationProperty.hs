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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-salesforcecrawlerconfiguration.html>
    SalesforceCrawlerConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-salesforcecrawlerconfiguration.html#cfn-bedrock-datasource-salesforcecrawlerconfiguration-filterconfiguration>
                                            filterConfiguration :: (Prelude.Maybe CrawlFilterConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSalesforceCrawlerConfigurationProperty ::
  SalesforceCrawlerConfigurationProperty
mkSalesforceCrawlerConfigurationProperty
  = SalesforceCrawlerConfigurationProperty
      {haddock_workaround_ = (), filterConfiguration = Prelude.Nothing}
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
  set newValue SalesforceCrawlerConfigurationProperty {..}
    = SalesforceCrawlerConfigurationProperty
        {filterConfiguration = Prelude.pure newValue, ..}