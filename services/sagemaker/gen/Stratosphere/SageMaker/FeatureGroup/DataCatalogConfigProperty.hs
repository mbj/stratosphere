module Stratosphere.SageMaker.FeatureGroup.DataCatalogConfigProperty (
        DataCatalogConfigProperty(..), mkDataCatalogConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataCatalogConfigProperty
  = DataCatalogConfigProperty {catalog :: (Value Prelude.Text),
                               database :: (Value Prelude.Text),
                               tableName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataCatalogConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> DataCatalogConfigProperty
mkDataCatalogConfigProperty catalog database tableName
  = DataCatalogConfigProperty
      {catalog = catalog, database = database, tableName = tableName}
instance ToResourceProperties DataCatalogConfigProperty where
  toResourceProperties DataCatalogConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::FeatureGroup.DataCatalogConfig",
         supportsTags = Prelude.False,
         properties = ["Catalog" JSON..= catalog,
                       "Database" JSON..= database, "TableName" JSON..= tableName]}
instance JSON.ToJSON DataCatalogConfigProperty where
  toJSON DataCatalogConfigProperty {..}
    = JSON.object
        ["Catalog" JSON..= catalog, "Database" JSON..= database,
         "TableName" JSON..= tableName]
instance Property "Catalog" DataCatalogConfigProperty where
  type PropertyType "Catalog" DataCatalogConfigProperty = Value Prelude.Text
  set newValue DataCatalogConfigProperty {..}
    = DataCatalogConfigProperty {catalog = newValue, ..}
instance Property "Database" DataCatalogConfigProperty where
  type PropertyType "Database" DataCatalogConfigProperty = Value Prelude.Text
  set newValue DataCatalogConfigProperty {..}
    = DataCatalogConfigProperty {database = newValue, ..}
instance Property "TableName" DataCatalogConfigProperty where
  type PropertyType "TableName" DataCatalogConfigProperty = Value Prelude.Text
  set newValue DataCatalogConfigProperty {..}
    = DataCatalogConfigProperty {tableName = newValue, ..}