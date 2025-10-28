module Stratosphere.Bedrock.DataSource.ConfluenceCrawlerConfigurationProperty (
        module Exports, ConfluenceCrawlerConfigurationProperty(..),
        mkConfluenceCrawlerConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.CrawlFilterConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ConfluenceCrawlerConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-confluencecrawlerconfiguration.html>
    ConfluenceCrawlerConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-confluencecrawlerconfiguration.html#cfn-bedrock-datasource-confluencecrawlerconfiguration-filterconfiguration>
                                            filterConfiguration :: (Prelude.Maybe CrawlFilterConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfluenceCrawlerConfigurationProperty ::
  ConfluenceCrawlerConfigurationProperty
mkConfluenceCrawlerConfigurationProperty
  = ConfluenceCrawlerConfigurationProperty
      {haddock_workaround_ = (), filterConfiguration = Prelude.Nothing}
instance ToResourceProperties ConfluenceCrawlerConfigurationProperty where
  toResourceProperties ConfluenceCrawlerConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.ConfluenceCrawlerConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FilterConfiguration" Prelude.<$> filterConfiguration])}
instance JSON.ToJSON ConfluenceCrawlerConfigurationProperty where
  toJSON ConfluenceCrawlerConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FilterConfiguration" Prelude.<$> filterConfiguration]))
instance Property "FilterConfiguration" ConfluenceCrawlerConfigurationProperty where
  type PropertyType "FilterConfiguration" ConfluenceCrawlerConfigurationProperty = CrawlFilterConfigurationProperty
  set newValue ConfluenceCrawlerConfigurationProperty {..}
    = ConfluenceCrawlerConfigurationProperty
        {filterConfiguration = Prelude.pure newValue, ..}