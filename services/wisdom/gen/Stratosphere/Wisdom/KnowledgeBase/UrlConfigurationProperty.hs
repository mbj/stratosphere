module Stratosphere.Wisdom.KnowledgeBase.UrlConfigurationProperty (
        module Exports, UrlConfigurationProperty(..),
        mkUrlConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.KnowledgeBase.SeedUrlProperty as Exports
import Stratosphere.ResourceProperties
data UrlConfigurationProperty
  = UrlConfigurationProperty {seedUrls :: (Prelude.Maybe [SeedUrlProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUrlConfigurationProperty :: UrlConfigurationProperty
mkUrlConfigurationProperty
  = UrlConfigurationProperty {seedUrls = Prelude.Nothing}
instance ToResourceProperties UrlConfigurationProperty where
  toResourceProperties UrlConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::KnowledgeBase.UrlConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "SeedUrls" Prelude.<$> seedUrls])}
instance JSON.ToJSON UrlConfigurationProperty where
  toJSON UrlConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "SeedUrls" Prelude.<$> seedUrls]))
instance Property "SeedUrls" UrlConfigurationProperty where
  type PropertyType "SeedUrls" UrlConfigurationProperty = [SeedUrlProperty]
  set newValue UrlConfigurationProperty {}
    = UrlConfigurationProperty {seedUrls = Prelude.pure newValue, ..}