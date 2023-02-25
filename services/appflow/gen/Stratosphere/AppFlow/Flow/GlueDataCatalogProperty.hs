module Stratosphere.AppFlow.Flow.GlueDataCatalogProperty (
        GlueDataCatalogProperty(..), mkGlueDataCatalogProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlueDataCatalogProperty
  = GlueDataCatalogProperty {databaseName :: (Value Prelude.Text),
                             roleArn :: (Value Prelude.Text),
                             tablePrefix :: (Value Prelude.Text)}
mkGlueDataCatalogProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> GlueDataCatalogProperty
mkGlueDataCatalogProperty databaseName roleArn tablePrefix
  = GlueDataCatalogProperty
      {databaseName = databaseName, roleArn = roleArn,
       tablePrefix = tablePrefix}
instance ToResourceProperties GlueDataCatalogProperty where
  toResourceProperties GlueDataCatalogProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.GlueDataCatalog",
         properties = ["DatabaseName" JSON..= databaseName,
                       "RoleArn" JSON..= roleArn, "TablePrefix" JSON..= tablePrefix]}
instance JSON.ToJSON GlueDataCatalogProperty where
  toJSON GlueDataCatalogProperty {..}
    = JSON.object
        ["DatabaseName" JSON..= databaseName, "RoleArn" JSON..= roleArn,
         "TablePrefix" JSON..= tablePrefix]
instance Property "DatabaseName" GlueDataCatalogProperty where
  type PropertyType "DatabaseName" GlueDataCatalogProperty = Value Prelude.Text
  set newValue GlueDataCatalogProperty {..}
    = GlueDataCatalogProperty {databaseName = newValue, ..}
instance Property "RoleArn" GlueDataCatalogProperty where
  type PropertyType "RoleArn" GlueDataCatalogProperty = Value Prelude.Text
  set newValue GlueDataCatalogProperty {..}
    = GlueDataCatalogProperty {roleArn = newValue, ..}
instance Property "TablePrefix" GlueDataCatalogProperty where
  type PropertyType "TablePrefix" GlueDataCatalogProperty = Value Prelude.Text
  set newValue GlueDataCatalogProperty {..}
    = GlueDataCatalogProperty {tablePrefix = newValue, ..}