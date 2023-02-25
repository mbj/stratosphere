module Stratosphere.Kendra.DataSource.WebCrawlerAuthenticationConfigurationProperty (
        module Exports, WebCrawlerAuthenticationConfigurationProperty(..),
        mkWebCrawlerAuthenticationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.WebCrawlerBasicAuthenticationProperty as Exports
import Stratosphere.ResourceProperties
data WebCrawlerAuthenticationConfigurationProperty
  = WebCrawlerAuthenticationConfigurationProperty {basicAuthentication :: (Prelude.Maybe [WebCrawlerBasicAuthenticationProperty])}
mkWebCrawlerAuthenticationConfigurationProperty ::
  WebCrawlerAuthenticationConfigurationProperty
mkWebCrawlerAuthenticationConfigurationProperty
  = WebCrawlerAuthenticationConfigurationProperty
      {basicAuthentication = Prelude.Nothing}
instance ToResourceProperties WebCrawlerAuthenticationConfigurationProperty where
  toResourceProperties
    WebCrawlerAuthenticationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.WebCrawlerAuthenticationConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BasicAuthentication" Prelude.<$> basicAuthentication])}
instance JSON.ToJSON WebCrawlerAuthenticationConfigurationProperty where
  toJSON WebCrawlerAuthenticationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BasicAuthentication" Prelude.<$> basicAuthentication]))
instance Property "BasicAuthentication" WebCrawlerAuthenticationConfigurationProperty where
  type PropertyType "BasicAuthentication" WebCrawlerAuthenticationConfigurationProperty = [WebCrawlerBasicAuthenticationProperty]
  set newValue WebCrawlerAuthenticationConfigurationProperty {}
    = WebCrawlerAuthenticationConfigurationProperty
        {basicAuthentication = Prelude.pure newValue, ..}