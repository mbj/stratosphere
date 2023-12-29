module Stratosphere.DataBrew.Recipe.InputProperty (
        module Exports, InputProperty(..), mkInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Recipe.DataCatalogInputDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Recipe.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
data InputProperty
  = InputProperty {dataCatalogInputDefinition :: (Prelude.Maybe DataCatalogInputDefinitionProperty),
                   s3InputDefinition :: (Prelude.Maybe S3LocationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputProperty :: InputProperty
mkInputProperty
  = InputProperty
      {dataCatalogInputDefinition = Prelude.Nothing,
       s3InputDefinition = Prelude.Nothing}
instance ToResourceProperties InputProperty where
  toResourceProperties InputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Recipe.Input",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataCatalogInputDefinition"
                              Prelude.<$> dataCatalogInputDefinition,
                            (JSON..=) "S3InputDefinition" Prelude.<$> s3InputDefinition])}
instance JSON.ToJSON InputProperty where
  toJSON InputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataCatalogInputDefinition"
                 Prelude.<$> dataCatalogInputDefinition,
               (JSON..=) "S3InputDefinition" Prelude.<$> s3InputDefinition]))
instance Property "DataCatalogInputDefinition" InputProperty where
  type PropertyType "DataCatalogInputDefinition" InputProperty = DataCatalogInputDefinitionProperty
  set newValue InputProperty {..}
    = InputProperty
        {dataCatalogInputDefinition = Prelude.pure newValue, ..}
instance Property "S3InputDefinition" InputProperty where
  type PropertyType "S3InputDefinition" InputProperty = S3LocationProperty
  set newValue InputProperty {..}
    = InputProperty {s3InputDefinition = Prelude.pure newValue, ..}