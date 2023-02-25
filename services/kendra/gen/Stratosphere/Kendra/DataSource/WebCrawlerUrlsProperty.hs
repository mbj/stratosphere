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
  = WebCrawlerUrlsProperty {seedUrlConfiguration :: (Prelude.Maybe WebCrawlerSeedUrlConfigurationProperty),
                            siteMapsConfiguration :: (Prelude.Maybe WebCrawlerSiteMapsConfigurationProperty)}
mkWebCrawlerUrlsProperty :: WebCrawlerUrlsProperty
mkWebCrawlerUrlsProperty
  = WebCrawlerUrlsProperty
      {seedUrlConfiguration = Prelude.Nothing,
       siteMapsConfiguration = Prelude.Nothing}
instance ToResourceProperties WebCrawlerUrlsProperty where
  toResourceProperties WebCrawlerUrlsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.WebCrawlerUrls",
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