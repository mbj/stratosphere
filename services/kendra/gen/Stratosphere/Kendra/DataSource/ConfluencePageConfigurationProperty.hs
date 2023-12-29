module Stratosphere.Kendra.DataSource.ConfluencePageConfigurationProperty (
        module Exports, ConfluencePageConfigurationProperty(..),
        mkConfluencePageConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.ConfluencePageToIndexFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
data ConfluencePageConfigurationProperty
  = ConfluencePageConfigurationProperty {pageFieldMappings :: (Prelude.Maybe [ConfluencePageToIndexFieldMappingProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfluencePageConfigurationProperty ::
  ConfluencePageConfigurationProperty
mkConfluencePageConfigurationProperty
  = ConfluencePageConfigurationProperty
      {pageFieldMappings = Prelude.Nothing}
instance ToResourceProperties ConfluencePageConfigurationProperty where
  toResourceProperties ConfluencePageConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.ConfluencePageConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PageFieldMappings" Prelude.<$> pageFieldMappings])}
instance JSON.ToJSON ConfluencePageConfigurationProperty where
  toJSON ConfluencePageConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PageFieldMappings" Prelude.<$> pageFieldMappings]))
instance Property "PageFieldMappings" ConfluencePageConfigurationProperty where
  type PropertyType "PageFieldMappings" ConfluencePageConfigurationProperty = [ConfluencePageToIndexFieldMappingProperty]
  set newValue ConfluencePageConfigurationProperty {}
    = ConfluencePageConfigurationProperty
        {pageFieldMappings = Prelude.pure newValue, ..}