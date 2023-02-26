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
  = WebCrawlerConfigurationProperty {authenticationConfiguration :: (Prelude.Maybe WebCrawlerAuthenticationConfigurationProperty),
                                     crawlDepth :: (Prelude.Maybe (Value Prelude.Integer)),
                                     maxContentSizePerPageInMegaBytes :: (Prelude.Maybe (Value Prelude.Double)),
                                     maxLinksPerPage :: (Prelude.Maybe (Value Prelude.Integer)),
                                     maxUrlsPerMinuteCrawlRate :: (Prelude.Maybe (Value Prelude.Integer)),
                                     proxyConfiguration :: (Prelude.Maybe ProxyConfigurationProperty),
                                     urlExclusionPatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     urlInclusionPatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     urls :: WebCrawlerUrlsProperty}
mkWebCrawlerConfigurationProperty ::
  WebCrawlerUrlsProperty -> WebCrawlerConfigurationProperty
mkWebCrawlerConfigurationProperty urls
  = WebCrawlerConfigurationProperty
      {urls = urls, authenticationConfiguration = Prelude.Nothing,
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