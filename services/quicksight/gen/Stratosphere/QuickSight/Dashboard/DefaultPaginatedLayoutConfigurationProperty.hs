module Stratosphere.QuickSight.Dashboard.DefaultPaginatedLayoutConfigurationProperty (
        module Exports, DefaultPaginatedLayoutConfigurationProperty(..),
        mkDefaultPaginatedLayoutConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DefaultSectionBasedLayoutConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data DefaultPaginatedLayoutConfigurationProperty
  = DefaultPaginatedLayoutConfigurationProperty {sectionBased :: (Prelude.Maybe DefaultSectionBasedLayoutConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultPaginatedLayoutConfigurationProperty ::
  DefaultPaginatedLayoutConfigurationProperty
mkDefaultPaginatedLayoutConfigurationProperty
  = DefaultPaginatedLayoutConfigurationProperty
      {sectionBased = Prelude.Nothing}
instance ToResourceProperties DefaultPaginatedLayoutConfigurationProperty where
  toResourceProperties
    DefaultPaginatedLayoutConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DefaultPaginatedLayoutConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SectionBased" Prelude.<$> sectionBased])}
instance JSON.ToJSON DefaultPaginatedLayoutConfigurationProperty where
  toJSON DefaultPaginatedLayoutConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SectionBased" Prelude.<$> sectionBased]))
instance Property "SectionBased" DefaultPaginatedLayoutConfigurationProperty where
  type PropertyType "SectionBased" DefaultPaginatedLayoutConfigurationProperty = DefaultSectionBasedLayoutConfigurationProperty
  set newValue DefaultPaginatedLayoutConfigurationProperty {}
    = DefaultPaginatedLayoutConfigurationProperty
        {sectionBased = Prelude.pure newValue, ..}