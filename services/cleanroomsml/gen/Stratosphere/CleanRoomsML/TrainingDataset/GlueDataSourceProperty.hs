module Stratosphere.CleanRoomsML.TrainingDataset.GlueDataSourceProperty (
        GlueDataSourceProperty(..), mkGlueDataSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlueDataSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanroomsml-trainingdataset-gluedatasource.html>
    GlueDataSourceProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanroomsml-trainingdataset-gluedatasource.html#cfn-cleanroomsml-trainingdataset-gluedatasource-catalogid>
                            catalogId :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanroomsml-trainingdataset-gluedatasource.html#cfn-cleanroomsml-trainingdataset-gluedatasource-databasename>
                            databaseName :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanroomsml-trainingdataset-gluedatasource.html#cfn-cleanroomsml-trainingdataset-gluedatasource-tablename>
                            tableName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlueDataSourceProperty ::
  Value Prelude.Text -> Value Prelude.Text -> GlueDataSourceProperty
mkGlueDataSourceProperty databaseName tableName
  = GlueDataSourceProperty
      {haddock_workaround_ = (), databaseName = databaseName,
       tableName = tableName, catalogId = Prelude.Nothing}
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