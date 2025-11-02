module Stratosphere.AppFlow.Flow.GlueDataCatalogProperty (
        GlueDataCatalogProperty(..), mkGlueDataCatalogProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlueDataCatalogProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-gluedatacatalog.html>
    GlueDataCatalogProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-gluedatacatalog.html#cfn-appflow-flow-gluedatacatalog-databasename>
                             databaseName :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-gluedatacatalog.html#cfn-appflow-flow-gluedatacatalog-rolearn>
                             roleArn :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-gluedatacatalog.html#cfn-appflow-flow-gluedatacatalog-tableprefix>
                             tablePrefix :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlueDataCatalogProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> GlueDataCatalogProperty
mkGlueDataCatalogProperty databaseName roleArn tablePrefix
  = GlueDataCatalogProperty
      {haddock_workaround_ = (), databaseName = databaseName,
       roleArn = roleArn, tablePrefix = tablePrefix}
instance ToResourceProperties GlueDataCatalogProperty where
  toResourceProperties GlueDataCatalogProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.GlueDataCatalog",
         supportsTags = Prelude.False,
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