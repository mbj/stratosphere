module Stratosphere.Kendra.DataSource.WebCrawlerUrlsProperty (
        module Exports, WebCrawlerUrlsProperty(..),
        mkWebCrawlerUrlsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.WebCrawlerSeedUrlConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.WebCrawlerSiteMapsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data WebCrawlerUrlsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerurls.html>
    WebCrawlerUrlsProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerurls.html#cfn-kendra-datasource-webcrawlerurls-seedurlconfiguration>
                            seedUrlConfiguration :: (Prelude.Maybe WebCrawlerSeedUrlConfigurationProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerurls.html#cfn-kendra-datasource-webcrawlerurls-sitemapsconfiguration>
                            siteMapsConfiguration :: (Prelude.Maybe WebCrawlerSiteMapsConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebCrawlerUrlsProperty :: WebCrawlerUrlsProperty
mkWebCrawlerUrlsProperty
  = WebCrawlerUrlsProperty
      {haddock_workaround_ = (), seedUrlConfiguration = Prelude.Nothing,
       siteMapsConfiguration = Prelude.Nothing}
instance ToResourceProperties WebCrawlerUrlsProperty where
  toResourceProperties WebCrawlerUrlsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.WebCrawlerUrls",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SeedUrlConfiguration" Prelude.<$> seedUrlConfiguration,
                            (JSON..=) "SiteMapsConfiguration"
                              Prelude.<$> siteMapsConfiguration])}
instance JSON.ToJSON WebCrawlerUrlsProperty where
  toJSON WebCrawlerUrlsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SeedUrlConfiguration" Prelude.<$> seedUrlConfiguration,
               (JSON..=) "SiteMapsConfiguration"
                 Prelude.<$> siteMapsConfiguration]))
instance Property "SeedUrlConfiguration" WebCrawlerUrlsProperty where
  type PropertyType "SeedUrlConfiguration" WebCrawlerUrlsProperty = WebCrawlerSeedUrlConfigurationProperty
  set newValue WebCrawlerUrlsProperty {..}
    = WebCrawlerUrlsProperty
        {seedUrlConfiguration = Prelude.pure newValue, ..}
instance Property "SiteMapsConfiguration" WebCrawlerUrlsProperty where
  type PropertyType "SiteMapsConfiguration" WebCrawlerUrlsProperty = WebCrawlerSiteMapsConfigurationProperty
  set newValue WebCrawlerUrlsProperty {..}
    = WebCrawlerUrlsProperty
        {siteMapsConfiguration = Prelude.pure newValue, ..}