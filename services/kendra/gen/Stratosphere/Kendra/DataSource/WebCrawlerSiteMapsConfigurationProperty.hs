module Stratosphere.Kendra.DataSource.WebCrawlerSiteMapsConfigurationProperty (
        WebCrawlerSiteMapsConfigurationProperty(..),
        mkWebCrawlerSiteMapsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WebCrawlerSiteMapsConfigurationProperty
  = WebCrawlerSiteMapsConfigurationProperty {siteMaps :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebCrawlerSiteMapsConfigurationProperty ::
  ValueList Prelude.Text -> WebCrawlerSiteMapsConfigurationProperty
mkWebCrawlerSiteMapsConfigurationProperty siteMaps
  = WebCrawlerSiteMapsConfigurationProperty {siteMaps = siteMaps}
instance ToResourceProperties WebCrawlerSiteMapsConfigurationProperty where
  toResourceProperties WebCrawlerSiteMapsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.WebCrawlerSiteMapsConfiguration",
         supportsTags = Prelude.False,
         properties = ["SiteMaps" JSON..= siteMaps]}
instance JSON.ToJSON WebCrawlerSiteMapsConfigurationProperty where
  toJSON WebCrawlerSiteMapsConfigurationProperty {..}
    = JSON.object ["SiteMaps" JSON..= siteMaps]
instance Property "SiteMaps" WebCrawlerSiteMapsConfigurationProperty where
  type PropertyType "SiteMaps" WebCrawlerSiteMapsConfigurationProperty = ValueList Prelude.Text
  set newValue WebCrawlerSiteMapsConfigurationProperty {}
    = WebCrawlerSiteMapsConfigurationProperty {siteMaps = newValue, ..}