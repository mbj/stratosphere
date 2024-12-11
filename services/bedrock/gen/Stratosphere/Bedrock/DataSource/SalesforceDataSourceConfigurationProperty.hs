module Stratosphere.Bedrock.DataSource.SalesforceDataSourceConfigurationProperty (
        module Exports, SalesforceDataSourceConfigurationProperty(..),
        mkSalesforceDataSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.SalesforceCrawlerConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.SalesforceSourceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data SalesforceDataSourceConfigurationProperty
  = SalesforceDataSourceConfigurationProperty {crawlerConfiguration :: (Prelude.Maybe SalesforceCrawlerConfigurationProperty),
                                               sourceConfiguration :: SalesforceSourceConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSalesforceDataSourceConfigurationProperty ::
  SalesforceSourceConfigurationProperty
  -> SalesforceDataSourceConfigurationProperty
mkSalesforceDataSourceConfigurationProperty sourceConfiguration
  = SalesforceDataSourceConfigurationProperty
      {sourceConfiguration = sourceConfiguration,
       crawlerConfiguration = Prelude.Nothing}
instance ToResourceProperties SalesforceDataSourceConfigurationProperty where
  toResourceProperties SalesforceDataSourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.SalesforceDataSourceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SourceConfiguration" JSON..= sourceConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "CrawlerConfiguration"
                                 Prelude.<$> crawlerConfiguration]))}
instance JSON.ToJSON SalesforceDataSourceConfigurationProperty where
  toJSON SalesforceDataSourceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SourceConfiguration" JSON..= sourceConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "CrawlerConfiguration"
                    Prelude.<$> crawlerConfiguration])))
instance Property "CrawlerConfiguration" SalesforceDataSourceConfigurationProperty where
  type PropertyType "CrawlerConfiguration" SalesforceDataSourceConfigurationProperty = SalesforceCrawlerConfigurationProperty
  set newValue SalesforceDataSourceConfigurationProperty {..}
    = SalesforceDataSourceConfigurationProperty
        {crawlerConfiguration = Prelude.pure newValue, ..}
instance Property "SourceConfiguration" SalesforceDataSourceConfigurationProperty where
  type PropertyType "SourceConfiguration" SalesforceDataSourceConfigurationProperty = SalesforceSourceConfigurationProperty
  set newValue SalesforceDataSourceConfigurationProperty {..}
    = SalesforceDataSourceConfigurationProperty
        {sourceConfiguration = newValue, ..}