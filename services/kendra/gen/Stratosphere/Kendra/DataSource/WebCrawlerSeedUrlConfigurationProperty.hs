module Stratosphere.Kendra.DataSource.WebCrawlerSeedUrlConfigurationProperty (
        WebCrawlerSeedUrlConfigurationProperty(..),
        mkWebCrawlerSeedUrlConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WebCrawlerSeedUrlConfigurationProperty
  = WebCrawlerSeedUrlConfigurationProperty {seedUrls :: (ValueList Prelude.Text),
                                            webCrawlerMode :: (Prelude.Maybe (Value Prelude.Text))}
mkWebCrawlerSeedUrlConfigurationProperty ::
  ValueList Prelude.Text -> WebCrawlerSeedUrlConfigurationProperty
mkWebCrawlerSeedUrlConfigurationProperty seedUrls
  = WebCrawlerSeedUrlConfigurationProperty
      {seedUrls = seedUrls, webCrawlerMode = Prelude.Nothing}
instance ToResourceProperties WebCrawlerSeedUrlConfigurationProperty where
  toResourceProperties WebCrawlerSeedUrlConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.WebCrawlerSeedUrlConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SeedUrls" JSON..= seedUrls]
                           (Prelude.catMaybes
                              [(JSON..=) "WebCrawlerMode" Prelude.<$> webCrawlerMode]))}
instance JSON.ToJSON WebCrawlerSeedUrlConfigurationProperty where
  toJSON WebCrawlerSeedUrlConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SeedUrls" JSON..= seedUrls]
              (Prelude.catMaybes
                 [(JSON..=) "WebCrawlerMode" Prelude.<$> webCrawlerMode])))
instance Property "SeedUrls" WebCrawlerSeedUrlConfigurationProperty where
  type PropertyType "SeedUrls" WebCrawlerSeedUrlConfigurationProperty = ValueList Prelude.Text
  set newValue WebCrawlerSeedUrlConfigurationProperty {..}
    = WebCrawlerSeedUrlConfigurationProperty {seedUrls = newValue, ..}
instance Property "WebCrawlerMode" WebCrawlerSeedUrlConfigurationProperty where
  type PropertyType "WebCrawlerMode" WebCrawlerSeedUrlConfigurationProperty = Value Prelude.Text
  set newValue WebCrawlerSeedUrlConfigurationProperty {..}
    = WebCrawlerSeedUrlConfigurationProperty
        {webCrawlerMode = Prelude.pure newValue, ..}