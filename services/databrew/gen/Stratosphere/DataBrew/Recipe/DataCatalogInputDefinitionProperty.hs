module Stratosphere.DataBrew.Recipe.DataCatalogInputDefinitionProperty (
        module Exports, DataCatalogInputDefinitionProperty(..),
        mkDataCatalogInputDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Recipe.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataCatalogInputDefinitionProperty
  = DataCatalogInputDefinitionProperty {catalogId :: (Prelude.Maybe (Value Prelude.Text)),
                                        databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                                        tableName :: (Prelude.Maybe (Value Prelude.Text)),
                                        tempDirectory :: (Prelude.Maybe S3LocationProperty)}
mkDataCatalogInputDefinitionProperty ::
  DataCatalogInputDefinitionProperty
mkDataCatalogInputDefinitionProperty
  = DataCatalogInputDefinitionProperty
      {catalogId = Prelude.Nothing, databaseName = Prelude.Nothing,
       tableName = Prelude.Nothing, tempDirectory = Prelude.Nothing}
instance ToResourceProperties DataCatalogInputDefinitionProperty where
  toResourceProperties DataCatalogInputDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Recipe.DataCatalogInputDefinition",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CatalogId" Prelude.<$> catalogId,
                            (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "TableName" Prelude.<$> tableName,
                            (JSON..=) "TempDirectory" Prelude.<$> tempDirectory])}
instance JSON.ToJSON DataCatalogInputDefinitionProperty where
  toJSON DataCatalogInputDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CatalogId" Prelude.<$> catalogId,
               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "TableName" Prelude.<$> tableName,
               (JSON..=) "TempDirectory" Prelude.<$> tempDirectory]))
instance Property "CatalogId" DataCatalogInputDefinitionProperty where
  type PropertyType "CatalogId" DataCatalogInputDefinitionProperty = Value Prelude.Text
  set newValue DataCatalogInputDefinitionProperty {..}
    = DataCatalogInputDefinitionProperty
        {catalogId = Prelude.pure newValue, ..}
instance Property "DatabaseName" DataCatalogInputDefinitionProperty where
  type PropertyType "DatabaseName" DataCatalogInputDefinitionProperty = Value Prelude.Text
  set newValue DataCatalogInputDefinitionProperty {..}
    = DataCatalogInputDefinitionProperty
        {databaseName = Prelude.pure newValue, ..}
instance Property "TableName" DataCatalogInputDefinitionProperty where
  type PropertyType "TableName" DataCatalogInputDefinitionProperty = Value Prelude.Text
  set newValue DataCatalogInputDefinitionProperty {..}
    = DataCatalogInputDefinitionProperty
        {tableName = Prelude.pure newValue, ..}
instance Property "TempDirectory" DataCatalogInputDefinitionProperty where
  type PropertyType "TempDirectory" DataCatalogInputDefinitionProperty = S3LocationProperty
  set newValue DataCatalogInputDefinitionProperty {..}
    = DataCatalogInputDefinitionProperty
        {tempDirectory = Prelude.pure newValue, ..}