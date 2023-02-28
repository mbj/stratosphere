module Stratosphere.Kendra.DataSource.ConfluenceSpaceConfigurationProperty (
        module Exports, ConfluenceSpaceConfigurationProperty(..),
        mkConfluenceSpaceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.ConfluenceSpaceToIndexFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfluenceSpaceConfigurationProperty
  = ConfluenceSpaceConfigurationProperty {crawlArchivedSpaces :: (Prelude.Maybe (Value Prelude.Bool)),
                                          crawlPersonalSpaces :: (Prelude.Maybe (Value Prelude.Bool)),
                                          excludeSpaces :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          includeSpaces :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          spaceFieldMappings :: (Prelude.Maybe [ConfluenceSpaceToIndexFieldMappingProperty])}
mkConfluenceSpaceConfigurationProperty ::
  ConfluenceSpaceConfigurationProperty
mkConfluenceSpaceConfigurationProperty
  = ConfluenceSpaceConfigurationProperty
      {crawlArchivedSpaces = Prelude.Nothing,
       crawlPersonalSpaces = Prelude.Nothing,
       excludeSpaces = Prelude.Nothing, includeSpaces = Prelude.Nothing,
       spaceFieldMappings = Prelude.Nothing}
instance ToResourceProperties ConfluenceSpaceConfigurationProperty where
  toResourceProperties ConfluenceSpaceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.ConfluenceSpaceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CrawlArchivedSpaces" Prelude.<$> crawlArchivedSpaces,
                            (JSON..=) "CrawlPersonalSpaces" Prelude.<$> crawlPersonalSpaces,
                            (JSON..=) "ExcludeSpaces" Prelude.<$> excludeSpaces,
                            (JSON..=) "IncludeSpaces" Prelude.<$> includeSpaces,
                            (JSON..=) "SpaceFieldMappings" Prelude.<$> spaceFieldMappings])}
instance JSON.ToJSON ConfluenceSpaceConfigurationProperty where
  toJSON ConfluenceSpaceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CrawlArchivedSpaces" Prelude.<$> crawlArchivedSpaces,
               (JSON..=) "CrawlPersonalSpaces" Prelude.<$> crawlPersonalSpaces,
               (JSON..=) "ExcludeSpaces" Prelude.<$> excludeSpaces,
               (JSON..=) "IncludeSpaces" Prelude.<$> includeSpaces,
               (JSON..=) "SpaceFieldMappings" Prelude.<$> spaceFieldMappings]))
instance Property "CrawlArchivedSpaces" ConfluenceSpaceConfigurationProperty where
  type PropertyType "CrawlArchivedSpaces" ConfluenceSpaceConfigurationProperty = Value Prelude.Bool
  set newValue ConfluenceSpaceConfigurationProperty {..}
    = ConfluenceSpaceConfigurationProperty
        {crawlArchivedSpaces = Prelude.pure newValue, ..}
instance Property "CrawlPersonalSpaces" ConfluenceSpaceConfigurationProperty where
  type PropertyType "CrawlPersonalSpaces" ConfluenceSpaceConfigurationProperty = Value Prelude.Bool
  set newValue ConfluenceSpaceConfigurationProperty {..}
    = ConfluenceSpaceConfigurationProperty
        {crawlPersonalSpaces = Prelude.pure newValue, ..}
instance Property "ExcludeSpaces" ConfluenceSpaceConfigurationProperty where
  type PropertyType "ExcludeSpaces" ConfluenceSpaceConfigurationProperty = ValueList Prelude.Text
  set newValue ConfluenceSpaceConfigurationProperty {..}
    = ConfluenceSpaceConfigurationProperty
        {excludeSpaces = Prelude.pure newValue, ..}
instance Property "IncludeSpaces" ConfluenceSpaceConfigurationProperty where
  type PropertyType "IncludeSpaces" ConfluenceSpaceConfigurationProperty = ValueList Prelude.Text
  set newValue ConfluenceSpaceConfigurationProperty {..}
    = ConfluenceSpaceConfigurationProperty
        {includeSpaces = Prelude.pure newValue, ..}
instance Property "SpaceFieldMappings" ConfluenceSpaceConfigurationProperty where
  type PropertyType "SpaceFieldMappings" ConfluenceSpaceConfigurationProperty = [ConfluenceSpaceToIndexFieldMappingProperty]
  set newValue ConfluenceSpaceConfigurationProperty {..}
    = ConfluenceSpaceConfigurationProperty
        {spaceFieldMappings = Prelude.pure newValue, ..}