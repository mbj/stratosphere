module Stratosphere.Kendra.DataSource.WebCrawlerUrlsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data WebCrawlerUrlsProperty :: Prelude.Type
instance ToResourceProperties WebCrawlerUrlsProperty
instance JSON.ToJSON WebCrawlerUrlsProperty