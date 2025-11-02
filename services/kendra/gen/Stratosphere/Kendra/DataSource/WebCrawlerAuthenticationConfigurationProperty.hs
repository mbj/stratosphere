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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerauthenticationconfiguration.html>
    WebCrawlerAuthenticationConfigurationProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerauthenticationconfiguration.html#cfn-kendra-datasource-webcrawlerauthenticationconfiguration-basicauthentication>
                                                   basicAuthentication :: (Prelude.Maybe [WebCrawlerBasicAuthenticationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebCrawlerAuthenticationConfigurationProperty ::
  WebCrawlerAuthenticationConfigurationProperty
mkWebCrawlerAuthenticationConfigurationProperty
  = WebCrawlerAuthenticationConfigurationProperty
      {haddock_workaround_ = (), basicAuthentication = Prelude.Nothing}
instance ToResourceProperties WebCrawlerAuthenticationConfigurationProperty where
  toResourceProperties
    WebCrawlerAuthenticationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.WebCrawlerAuthenticationConfiguration",
         supportsTags = Prelude.False,
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
  set newValue WebCrawlerAuthenticationConfigurationProperty {..}
    = WebCrawlerAuthenticationConfigurationProperty
        {basicAuthentication = Prelude.pure newValue, ..}