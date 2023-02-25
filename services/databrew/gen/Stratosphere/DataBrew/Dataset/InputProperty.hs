module Stratosphere.DataBrew.Dataset.InputProperty (
        module Exports, InputProperty(..), mkInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Dataset.DataCatalogInputDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Dataset.DatabaseInputDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Dataset.MetadataProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Dataset.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
data InputProperty
  = InputProperty {dataCatalogInputDefinition :: (Prelude.Maybe DataCatalogInputDefinitionProperty),
                   databaseInputDefinition :: (Prelude.Maybe DatabaseInputDefinitionProperty),
                   metadata :: (Prelude.Maybe MetadataProperty),
                   s3InputDefinition :: (Prelude.Maybe S3LocationProperty)}
mkInputProperty :: InputProperty
mkInputProperty
  = InputProperty
      {dataCatalogInputDefinition = Prelude.Nothing,
       databaseInputDefinition = Prelude.Nothing,
       metadata = Prelude.Nothing, s3InputDefinition = Prelude.Nothing}
instance ToResourceProperties InputProperty where
  toResourceProperties InputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Dataset.Input",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataCatalogInputDefinition"
                              Prelude.<$> dataCatalogInputDefinition,
                            (JSON..=) "DatabaseInputDefinition"
                              Prelude.<$> databaseInputDefinition,
                            (JSON..=) "Metadata" Prelude.<$> metadata,
                            (JSON..=) "S3InputDefinition" Prelude.<$> s3InputDefinition])}
instance JSON.ToJSON InputProperty where
  toJSON InputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataCatalogInputDefinition"
                 Prelude.<$> dataCatalogInputDefinition,
               (JSON..=) "DatabaseInputDefinition"
                 Prelude.<$> databaseInputDefinition,
               (JSON..=) "Metadata" Prelude.<$> metadata,
               (JSON..=) "S3InputDefinition" Prelude.<$> s3InputDefinition]))
instance Property "DataCatalogInputDefinition" InputProperty where
  type PropertyType "DataCatalogInputDefinition" InputProperty = DataCatalogInputDefinitionProperty
  set newValue InputProperty {..}
    = InputProperty
        {dataCatalogInputDefinition = Prelude.pure newValue, ..}
instance Property "DatabaseInputDefinition" InputProperty where
  type PropertyType "DatabaseInputDefinition" InputProperty = DatabaseInputDefinitionProperty
  set newValue InputProperty {..}
    = InputProperty
        {databaseInputDefinition = Prelude.pure newValue, ..}
instance Property "Metadata" InputProperty where
  type PropertyType "Metadata" InputProperty = MetadataProperty
  set newValue InputProperty {..}
    = InputProperty {metadata = Prelude.pure newValue, ..}
instance Property "S3InputDefinition" InputProperty where
  type PropertyType "S3InputDefinition" InputProperty = S3LocationProperty
  set newValue InputProperty {..}
    = InputProperty {s3InputDefinition = Prelude.pure newValue, ..}