module Stratosphere.CleanRoomsML.TrainingDataset.GlueDataSourceProperty (
        GlueDataSourceProperty(..), mkGlueDataSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlueDataSourceProperty
  = GlueDataSourceProperty {catalogId :: (Prelude.Maybe (Value Prelude.Text)),
                            databaseName :: (Value Prelude.Text),
                            tableName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlueDataSourceProperty ::
  Value Prelude.Text -> Value Prelude.Text -> GlueDataSourceProperty
mkGlueDataSourceProperty databaseName tableName
  = GlueDataSourceProperty
      {databaseName = databaseName, tableName = tableName,
       catalogId = Prelude.Nothing}
instance ToResourceProperties GlueDataSourceProperty where
  toResourceProperties GlueDataSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRoomsML::TrainingDataset.GlueDataSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatabaseName" JSON..= databaseName,
                            "TableName" JSON..= tableName]
                           (Prelude.catMaybes [(JSON..=) "CatalogId" Prelude.<$> catalogId]))}
instance JSON.ToJSON GlueDataSourceProperty where
  toJSON GlueDataSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatabaseName" JSON..= databaseName,
               "TableName" JSON..= tableName]
              (Prelude.catMaybes [(JSON..=) "CatalogId" Prelude.<$> catalogId])))
instance Property "CatalogId" GlueDataSourceProperty where
  type PropertyType "CatalogId" GlueDataSourceProperty = Value Prelude.Text
  set newValue GlueDataSourceProperty {..}
    = GlueDataSourceProperty {catalogId = Prelude.pure newValue, ..}
instance Property "DatabaseName" GlueDataSourceProperty where
  type PropertyType "DatabaseName" GlueDataSourceProperty = Value Prelude.Text
  set newValue GlueDataSourceProperty {..}
    = GlueDataSourceProperty {databaseName = newValue, ..}
instance Property "TableName" GlueDataSourceProperty where
  type PropertyType "TableName" GlueDataSourceProperty = Value Prelude.Text
  set newValue GlueDataSourceProperty {..}
    = GlueDataSourceProperty {tableName = newValue, ..}