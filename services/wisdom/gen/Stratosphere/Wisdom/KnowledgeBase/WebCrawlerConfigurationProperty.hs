module Stratosphere.Wisdom.KnowledgeBase.WebCrawlerConfigurationProperty (
        module Exports, WebCrawlerConfigurationProperty(..),
        mkWebCrawlerConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.KnowledgeBase.CrawlerLimitsProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.KnowledgeBase.UrlConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WebCrawlerConfigurationProperty
  = WebCrawlerConfigurationProperty {crawlerLimits :: (Prelude.Maybe CrawlerLimitsProperty),
                                     exclusionFilters :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     inclusionFilters :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     scope :: (Prelude.Maybe (Value Prelude.Text)),
                                     urlConfiguration :: UrlConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebCrawlerConfigurationProperty ::
  UrlConfigurationProperty -> WebCrawlerConfigurationProperty
mkWebCrawlerConfigurationProperty urlConfiguration
  = WebCrawlerConfigurationProperty
      {urlConfiguration = urlConfiguration,
       crawlerLimits = Prelude.Nothing,
       exclusionFilters = Prelude.Nothing,
       inclusionFilters = Prelude.Nothing, scope = Prelude.Nothing}
instance ToResourceProperties WebCrawlerConfigurationProperty where
  toResourceProperties WebCrawlerConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::KnowledgeBase.WebCrawlerConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["UrlConfiguration" JSON..= urlConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "CrawlerLimits" Prelude.<$> crawlerLimits,
                               (JSON..=) "ExclusionFilters" Prelude.<$> exclusionFilters,
                               (JSON..=) "InclusionFilters" Prelude.<$> inclusionFilters,
                               (JSON..=) "Scope" Prelude.<$> scope]))}
instance JSON.ToJSON WebCrawlerConfigurationProperty where
  toJSON WebCrawlerConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["UrlConfiguration" JSON..= urlConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "CrawlerLimits" Prelude.<$> crawlerLimits,
                  (JSON..=) "ExclusionFilters" Prelude.<$> exclusionFilters,
                  (JSON..=) "InclusionFilters" Prelude.<$> inclusionFilters,
                  (JSON..=) "Scope" Prelude.<$> scope])))
instance Property "CrawlerLimits" WebCrawlerConfigurationProperty where
  type PropertyType "CrawlerLimits" WebCrawlerConfigurationProperty = CrawlerLimitsProperty
  set newValue WebCrawlerConfigurationProperty {..}
    = WebCrawlerConfigurationProperty
        {crawlerLimits = Prelude.pure newValue, ..}
instance Property "ExclusionFilters" WebCrawlerConfigurationProperty where
  type PropertyType "ExclusionFilters" WebCrawlerConfigurationProperty = ValueList Prelude.Text
  set newValue WebCrawlerConfigurationProperty {..}
    = WebCrawlerConfigurationProperty
        {exclusionFilters = Prelude.pure newValue, ..}
instance Property "InclusionFilters" WebCrawlerConfigurationProperty where
  type PropertyType "InclusionFilters" WebCrawlerConfigurationProperty = ValueList Prelude.Text
  set newValue WebCrawlerConfigurationProperty {..}
    = WebCrawlerConfigurationProperty
        {inclusionFilters = Prelude.pure newValue, ..}
instance Property "Scope" WebCrawlerConfigurationProperty where
  type PropertyType "Scope" WebCrawlerConfigurationProperty = Value Prelude.Text
  set newValue WebCrawlerConfigurationProperty {..}
    = WebCrawlerConfigurationProperty
        {scope = Prelude.pure newValue, ..}
instance Property "UrlConfiguration" WebCrawlerConfigurationProperty where
  type PropertyType "UrlConfiguration" WebCrawlerConfigurationProperty = UrlConfigurationProperty
  set newValue WebCrawlerConfigurationProperty {..}
    = WebCrawlerConfigurationProperty {urlConfiguration = newValue, ..}