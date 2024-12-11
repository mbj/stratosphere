module Stratosphere.Bedrock.DataSource.SharePointDataSourceConfigurationProperty (
        module Exports, SharePointDataSourceConfigurationProperty(..),
        mkSharePointDataSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.SharePointCrawlerConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.SharePointSourceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data SharePointDataSourceConfigurationProperty
  = SharePointDataSourceConfigurationProperty {crawlerConfiguration :: (Prelude.Maybe SharePointCrawlerConfigurationProperty),
                                               sourceConfiguration :: SharePointSourceConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSharePointDataSourceConfigurationProperty ::
  SharePointSourceConfigurationProperty
  -> SharePointDataSourceConfigurationProperty
mkSharePointDataSourceConfigurationProperty sourceConfiguration
  = SharePointDataSourceConfigurationProperty
      {sourceConfiguration = sourceConfiguration,
       crawlerConfiguration = Prelude.Nothing}
instance ToResourceProperties SharePointDataSourceConfigurationProperty where
  toResourceProperties SharePointDataSourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.SharePointDataSourceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SourceConfiguration" JSON..= sourceConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "CrawlerConfiguration"
                                 Prelude.<$> crawlerConfiguration]))}
instance JSON.ToJSON SharePointDataSourceConfigurationProperty where
  toJSON SharePointDataSourceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SourceConfiguration" JSON..= sourceConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "CrawlerConfiguration"
                    Prelude.<$> crawlerConfiguration])))
instance Property "CrawlerConfiguration" SharePointDataSourceConfigurationProperty where
  type PropertyType "CrawlerConfiguration" SharePointDataSourceConfigurationProperty = SharePointCrawlerConfigurationProperty
  set newValue SharePointDataSourceConfigurationProperty {..}
    = SharePointDataSourceConfigurationProperty
        {crawlerConfiguration = Prelude.pure newValue, ..}
instance Property "SourceConfiguration" SharePointDataSourceConfigurationProperty where
  type PropertyType "SourceConfiguration" SharePointDataSourceConfigurationProperty = SharePointSourceConfigurationProperty
  set newValue SharePointDataSourceConfigurationProperty {..}
    = SharePointDataSourceConfigurationProperty
        {sourceConfiguration = newValue, ..}