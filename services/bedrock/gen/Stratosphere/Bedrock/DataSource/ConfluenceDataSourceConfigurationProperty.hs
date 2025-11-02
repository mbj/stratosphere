module Stratosphere.Bedrock.DataSource.ConfluenceDataSourceConfigurationProperty (
        module Exports, ConfluenceDataSourceConfigurationProperty(..),
        mkConfluenceDataSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.ConfluenceCrawlerConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.ConfluenceSourceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ConfluenceDataSourceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-confluencedatasourceconfiguration.html>
    ConfluenceDataSourceConfigurationProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-confluencedatasourceconfiguration.html#cfn-bedrock-datasource-confluencedatasourceconfiguration-crawlerconfiguration>
                                               crawlerConfiguration :: (Prelude.Maybe ConfluenceCrawlerConfigurationProperty),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-confluencedatasourceconfiguration.html#cfn-bedrock-datasource-confluencedatasourceconfiguration-sourceconfiguration>
                                               sourceConfiguration :: ConfluenceSourceConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfluenceDataSourceConfigurationProperty ::
  ConfluenceSourceConfigurationProperty
  -> ConfluenceDataSourceConfigurationProperty
mkConfluenceDataSourceConfigurationProperty sourceConfiguration
  = ConfluenceDataSourceConfigurationProperty
      {haddock_workaround_ = (),
       sourceConfiguration = sourceConfiguration,
       crawlerConfiguration = Prelude.Nothing}
instance ToResourceProperties ConfluenceDataSourceConfigurationProperty where
  toResourceProperties ConfluenceDataSourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.ConfluenceDataSourceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SourceConfiguration" JSON..= sourceConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "CrawlerConfiguration"
                                 Prelude.<$> crawlerConfiguration]))}
instance JSON.ToJSON ConfluenceDataSourceConfigurationProperty where
  toJSON ConfluenceDataSourceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SourceConfiguration" JSON..= sourceConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "CrawlerConfiguration"
                    Prelude.<$> crawlerConfiguration])))
instance Property "CrawlerConfiguration" ConfluenceDataSourceConfigurationProperty where
  type PropertyType "CrawlerConfiguration" ConfluenceDataSourceConfigurationProperty = ConfluenceCrawlerConfigurationProperty
  set newValue ConfluenceDataSourceConfigurationProperty {..}
    = ConfluenceDataSourceConfigurationProperty
        {crawlerConfiguration = Prelude.pure newValue, ..}
instance Property "SourceConfiguration" ConfluenceDataSourceConfigurationProperty where
  type PropertyType "SourceConfiguration" ConfluenceDataSourceConfigurationProperty = ConfluenceSourceConfigurationProperty
  set newValue ConfluenceDataSourceConfigurationProperty {..}
    = ConfluenceDataSourceConfigurationProperty
        {sourceConfiguration = newValue, ..}