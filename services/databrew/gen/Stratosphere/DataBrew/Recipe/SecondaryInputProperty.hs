module Stratosphere.DataBrew.Recipe.SecondaryInputProperty (
        module Exports, SecondaryInputProperty(..),
        mkSecondaryInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Recipe.DataCatalogInputDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Recipe.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
data SecondaryInputProperty
  = SecondaryInputProperty {dataCatalogInputDefinition :: (Prelude.Maybe DataCatalogInputDefinitionProperty),
                            s3InputDefinition :: (Prelude.Maybe S3LocationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecondaryInputProperty :: SecondaryInputProperty
mkSecondaryInputProperty
  = SecondaryInputProperty
      {dataCatalogInputDefinition = Prelude.Nothing,
       s3InputDefinition = Prelude.Nothing}
instance ToResourceProperties SecondaryInputProperty where
  toResourceProperties SecondaryInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Recipe.SecondaryInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataCatalogInputDefinition"
                              Prelude.<$> dataCatalogInputDefinition,
                            (JSON..=) "S3InputDefinition" Prelude.<$> s3InputDefinition])}
instance JSON.ToJSON SecondaryInputProperty where
  toJSON SecondaryInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataCatalogInputDefinition"
                 Prelude.<$> dataCatalogInputDefinition,
               (JSON..=) "S3InputDefinition" Prelude.<$> s3InputDefinition]))
instance Property "DataCatalogInputDefinition" SecondaryInputProperty where
  type PropertyType "DataCatalogInputDefinition" SecondaryInputProperty = DataCatalogInputDefinitionProperty
  set newValue SecondaryInputProperty {..}
    = SecondaryInputProperty
        {dataCatalogInputDefinition = Prelude.pure newValue, ..}
instance Property "S3InputDefinition" SecondaryInputProperty where
  type PropertyType "S3InputDefinition" SecondaryInputProperty = S3LocationProperty
  set newValue SecondaryInputProperty {..}
    = SecondaryInputProperty
        {s3InputDefinition = Prelude.pure newValue, ..}