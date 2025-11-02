module Stratosphere.Bedrock.DataSource.WebDataSourceConfigurationProperty (
        module Exports, WebDataSourceConfigurationProperty(..),
        mkWebDataSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.WebCrawlerConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.WebSourceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data WebDataSourceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-webdatasourceconfiguration.html>
    WebDataSourceConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-webdatasourceconfiguration.html#cfn-bedrock-datasource-webdatasourceconfiguration-crawlerconfiguration>
                                        crawlerConfiguration :: (Prelude.Maybe WebCrawlerConfigurationProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-webdatasourceconfiguration.html#cfn-bedrock-datasource-webdatasourceconfiguration-sourceconfiguration>
                                        sourceConfiguration :: WebSourceConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebDataSourceConfigurationProperty ::
  WebSourceConfigurationProperty
  -> WebDataSourceConfigurationProperty
mkWebDataSourceConfigurationProperty sourceConfiguration
  = WebDataSourceConfigurationProperty
      {haddock_workaround_ = (),
       sourceConfiguration = sourceConfiguration,
       crawlerConfiguration = Prelude.Nothing}
instance ToResourceProperties WebDataSourceConfigurationProperty where
  toResourceProperties WebDataSourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.WebDataSourceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SourceConfiguration" JSON..= sourceConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "CrawlerConfiguration"
                                 Prelude.<$> crawlerConfiguration]))}
instance JSON.ToJSON WebDataSourceConfigurationProperty where
  toJSON WebDataSourceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SourceConfiguration" JSON..= sourceConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "CrawlerConfiguration"
                    Prelude.<$> crawlerConfiguration])))
instance Property "CrawlerConfiguration" WebDataSourceConfigurationProperty where
  type PropertyType "CrawlerConfiguration" WebDataSourceConfigurationProperty = WebCrawlerConfigurationProperty
  set newValue WebDataSourceConfigurationProperty {..}
    = WebDataSourceConfigurationProperty
        {crawlerConfiguration = Prelude.pure newValue, ..}
instance Property "SourceConfiguration" WebDataSourceConfigurationProperty where
  type PropertyType "SourceConfiguration" WebDataSourceConfigurationProperty = WebSourceConfigurationProperty
  set newValue WebDataSourceConfigurationProperty {..}
    = WebDataSourceConfigurationProperty
        {sourceConfiguration = newValue, ..}