module Stratosphere.AppFlow.Flow.MetadataCatalogConfigProperty (
        module Exports, MetadataCatalogConfigProperty(..),
        mkMetadataCatalogConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.GlueDataCatalogProperty as Exports
import Stratosphere.ResourceProperties
data MetadataCatalogConfigProperty
  = MetadataCatalogConfigProperty {glueDataCatalog :: (Prelude.Maybe GlueDataCatalogProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetadataCatalogConfigProperty :: MetadataCatalogConfigProperty
mkMetadataCatalogConfigProperty
  = MetadataCatalogConfigProperty {glueDataCatalog = Prelude.Nothing}
instance ToResourceProperties MetadataCatalogConfigProperty where
  toResourceProperties MetadataCatalogConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.MetadataCatalogConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GlueDataCatalog" Prelude.<$> glueDataCatalog])}
instance JSON.ToJSON MetadataCatalogConfigProperty where
  toJSON MetadataCatalogConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GlueDataCatalog" Prelude.<$> glueDataCatalog]))
instance Property "GlueDataCatalog" MetadataCatalogConfigProperty where
  type PropertyType "GlueDataCatalog" MetadataCatalogConfigProperty = GlueDataCatalogProperty
  set newValue MetadataCatalogConfigProperty {}
    = MetadataCatalogConfigProperty
        {glueDataCatalog = Prelude.pure newValue, ..}