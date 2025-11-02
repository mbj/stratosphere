module Stratosphere.Bedrock.DataSource.SharePointCrawlerConfigurationProperty (
        module Exports, SharePointCrawlerConfigurationProperty(..),
        mkSharePointCrawlerConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.CrawlFilterConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data SharePointCrawlerConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-sharepointcrawlerconfiguration.html>
    SharePointCrawlerConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-sharepointcrawlerconfiguration.html#cfn-bedrock-datasource-sharepointcrawlerconfiguration-filterconfiguration>
                                            filterConfiguration :: (Prelude.Maybe CrawlFilterConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSharePointCrawlerConfigurationProperty ::
  SharePointCrawlerConfigurationProperty
mkSharePointCrawlerConfigurationProperty
  = SharePointCrawlerConfigurationProperty
      {haddock_workaround_ = (), filterConfiguration = Prelude.Nothing}
instance ToResourceProperties SharePointCrawlerConfigurationProperty where
  toResourceProperties SharePointCrawlerConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.SharePointCrawlerConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FilterConfiguration" Prelude.<$> filterConfiguration])}
instance JSON.ToJSON SharePointCrawlerConfigurationProperty where
  toJSON SharePointCrawlerConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FilterConfiguration" Prelude.<$> filterConfiguration]))
instance Property "FilterConfiguration" SharePointCrawlerConfigurationProperty where
  type PropertyType "FilterConfiguration" SharePointCrawlerConfigurationProperty = CrawlFilterConfigurationProperty
  set newValue SharePointCrawlerConfigurationProperty {..}
    = SharePointCrawlerConfigurationProperty
        {filterConfiguration = Prelude.pure newValue, ..}