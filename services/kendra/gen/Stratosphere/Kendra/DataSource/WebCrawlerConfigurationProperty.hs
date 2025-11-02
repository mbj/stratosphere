module Stratosphere.Kendra.DataSource.WebCrawlerConfigurationProperty (
        module Exports, WebCrawlerConfigurationProperty(..),
        mkWebCrawlerConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.ProxyConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.WebCrawlerAuthenticationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.WebCrawlerUrlsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WebCrawlerConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerconfiguration.html>
    WebCrawlerConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerconfiguration.html#cfn-kendra-datasource-webcrawlerconfiguration-authenticationconfiguration>
                                     authenticationConfiguration :: (Prelude.Maybe WebCrawlerAuthenticationConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerconfiguration.html#cfn-kendra-datasource-webcrawlerconfiguration-crawldepth>
                                     crawlDepth :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerconfiguration.html#cfn-kendra-datasource-webcrawlerconfiguration-maxcontentsizeperpageinmegabytes>
                                     maxContentSizePerPageInMegaBytes :: (Prelude.Maybe (Value Prelude.Double)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerconfiguration.html#cfn-kendra-datasource-webcrawlerconfiguration-maxlinksperpage>
                                     maxLinksPerPage :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerconfiguration.html#cfn-kendra-datasource-webcrawlerconfiguration-maxurlsperminutecrawlrate>
                                     maxUrlsPerMinuteCrawlRate :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerconfiguration.html#cfn-kendra-datasource-webcrawlerconfiguration-proxyconfiguration>
                                     proxyConfiguration :: (Prelude.Maybe ProxyConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerconfiguration.html#cfn-kendra-datasource-webcrawlerconfiguration-urlexclusionpatterns>
                                     urlExclusionPatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerconfiguration.html#cfn-kendra-datasource-webcrawlerconfiguration-urlinclusionpatterns>
                                     urlInclusionPatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-webcrawlerconfiguration.html#cfn-kendra-datasource-webcrawlerconfiguration-urls>
                                     urls :: WebCrawlerUrlsProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebCrawlerConfigurationProperty ::
  WebCrawlerUrlsProperty -> WebCrawlerConfigurationProperty
mkWebCrawlerConfigurationProperty urls
  = WebCrawlerConfigurationProperty
      {haddock_workaround_ = (), urls = urls,
       authenticationConfiguration = Prelude.Nothing,
       crawlDepth = Prelude.Nothing,
       maxContentSizePerPageInMegaBytes = Prelude.Nothing,
       maxLinksPerPage = Prelude.Nothing,
       maxUrlsPerMinuteCrawlRate = Prelude.Nothing,
       proxyConfiguration = Prelude.Nothing,
       urlExclusionPatterns = Prelude.Nothing,
       urlInclusionPatterns = Prelude.Nothing}
instance ToResourceProperties WebCrawlerConfigurationProperty where
  toResourceProperties WebCrawlerConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.WebCrawlerConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Urls" JSON..= urls]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthenticationConfiguration"
                                 Prelude.<$> authenticationConfiguration,
                               (JSON..=) "CrawlDepth" Prelude.<$> crawlDepth,
                               (JSON..=) "MaxContentSizePerPageInMegaBytes"
                                 Prelude.<$> maxContentSizePerPageInMegaBytes,
                               (JSON..=) "MaxLinksPerPage" Prelude.<$> maxLinksPerPage,
                               (JSON..=) "MaxUrlsPerMinuteCrawlRate"
                                 Prelude.<$> maxUrlsPerMinuteCrawlRate,
                               (JSON..=) "ProxyConfiguration" Prelude.<$> proxyConfiguration,
                               (JSON..=) "UrlExclusionPatterns" Prelude.<$> urlExclusionPatterns,
                               (JSON..=) "UrlInclusionPatterns"
                                 Prelude.<$> urlInclusionPatterns]))}
instance JSON.ToJSON WebCrawlerConfigurationProperty where
  toJSON WebCrawlerConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Urls" JSON..= urls]
              (Prelude.catMaybes
                 [(JSON..=) "AuthenticationConfiguration"
                    Prelude.<$> authenticationConfiguration,
                  (JSON..=) "CrawlDepth" Prelude.<$> crawlDepth,
                  (JSON..=) "MaxContentSizePerPageInMegaBytes"
                    Prelude.<$> maxContentSizePerPageInMegaBytes,
                  (JSON..=) "MaxLinksPerPage" Prelude.<$> maxLinksPerPage,
                  (JSON..=) "MaxUrlsPerMinuteCrawlRate"
                    Prelude.<$> maxUrlsPerMinuteCrawlRate,
                  (JSON..=) "ProxyConfiguration" Prelude.<$> proxyConfiguration,
                  (JSON..=) "UrlExclusionPatterns" Prelude.<$> urlExclusionPatterns,
                  (JSON..=) "UrlInclusionPatterns"
                    Prelude.<$> urlInclusionPatterns])))
instance Property "AuthenticationConfiguration" WebCrawlerConfigurationProperty where
  type PropertyType "AuthenticationConfiguration" WebCrawlerConfigurationProperty = WebCrawlerAuthenticationConfigurationProperty
  set newValue WebCrawlerConfigurationProperty {..}
    = WebCrawlerConfigurationProperty
        {authenticationConfiguration = Prelude.pure newValue, ..}
instance Property "CrawlDepth" WebCrawlerConfigurationProperty where
  type PropertyType "CrawlDepth" WebCrawlerConfigurationProperty = Value Prelude.Integer
  set newValue WebCrawlerConfigurationProperty {..}
    = WebCrawlerConfigurationProperty
        {crawlDepth = Prelude.pure newValue, ..}
instance Property "MaxContentSizePerPageInMegaBytes" WebCrawlerConfigurationProperty where
  type PropertyType "MaxContentSizePerPageInMegaBytes" WebCrawlerConfigurationProperty = Value Prelude.Double
  set newValue WebCrawlerConfigurationProperty {..}
    = WebCrawlerConfigurationProperty
        {maxContentSizePerPageInMegaBytes = Prelude.pure newValue, ..}
instance Property "MaxLinksPerPage" WebCrawlerConfigurationProperty where
  type PropertyType "MaxLinksPerPage" WebCrawlerConfigurationProperty = Value Prelude.Integer
  set newValue WebCrawlerConfigurationProperty {..}
    = WebCrawlerConfigurationProperty
        {maxLinksPerPage = Prelude.pure newValue, ..}
instance Property "MaxUrlsPerMinuteCrawlRate" WebCrawlerConfigurationProperty where
  type PropertyType "MaxUrlsPerMinuteCrawlRate" WebCrawlerConfigurationProperty = Value Prelude.Integer
  set newValue WebCrawlerConfigurationProperty {..}
    = WebCrawlerConfigurationProperty
        {maxUrlsPerMinuteCrawlRate = Prelude.pure newValue, ..}
instance Property "ProxyConfiguration" WebCrawlerConfigurationProperty where
  type PropertyType "ProxyConfiguration" WebCrawlerConfigurationProperty = ProxyConfigurationProperty
  set newValue WebCrawlerConfigurationProperty {..}
    = WebCrawlerConfigurationProperty
        {proxyConfiguration = Prelude.pure newValue, ..}
instance Property "UrlExclusionPatterns" WebCrawlerConfigurationProperty where
  type PropertyType "UrlExclusionPatterns" WebCrawlerConfigurationProperty = ValueList Prelude.Text
  set newValue WebCrawlerConfigurationProperty {..}
    = WebCrawlerConfigurationProperty
        {urlExclusionPatterns = Prelude.pure newValue, ..}
instance Property "UrlInclusionPatterns" WebCrawlerConfigurationProperty where
  type PropertyType "UrlInclusionPatterns" WebCrawlerConfigurationProperty = ValueList Prelude.Text
  set newValue WebCrawlerConfigurationProperty {..}
    = WebCrawlerConfigurationProperty
        {urlInclusionPatterns = Prelude.pure newValue, ..}
instance Property "Urls" WebCrawlerConfigurationProperty where
  type PropertyType "Urls" WebCrawlerConfigurationProperty = WebCrawlerUrlsProperty
  set newValue WebCrawlerConfigurationProperty {..}
    = WebCrawlerConfigurationProperty {urls = newValue, ..}