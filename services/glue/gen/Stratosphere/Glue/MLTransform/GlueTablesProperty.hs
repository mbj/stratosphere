module Stratosphere.Glue.MLTransform.GlueTablesProperty (
        GlueTablesProperty(..), mkGlueTablesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlueTablesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html>
    GlueTablesProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html#cfn-glue-mltransform-inputrecordtables-gluetables-catalogid>
                        catalogId :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html#cfn-glue-mltransform-inputrecordtables-gluetables-connectionname>
                        connectionName :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html#cfn-glue-mltransform-inputrecordtables-gluetables-databasename>
                        databaseName :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html#cfn-glue-mltransform-inputrecordtables-gluetables-tablename>
                        tableName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlueTablesProperty ::
  Value Prelude.Text -> Value Prelude.Text -> GlueTablesProperty
mkGlueTablesProperty databaseName tableName
  = GlueTablesProperty
      {haddock_workaround_ = (), databaseName = databaseName,
       tableName = tableName, catalogId = Prelude.Nothing,
       connectionName = Prelude.Nothing}
instance ToResourceProperties GlueTablesProperty where
  toResourceProperties GlueTablesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::MLTransform.GlueTables",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatabaseName" JSON..= databaseName,
                            "TableName" JSON..= tableName]
                           (Prelude.catMaybes
                              [(JSON..=) "CatalogId" Prelude.<$> catalogId,
                               (JSON..=) "ConnectionName" Prelude.<$> connectionName]))}
instance JSON.ToJSON GlueTablesProperty where
  toJSON GlueTablesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatabaseName" JSON..= databaseName,
               "TableName" JSON..= tableName]
              (Prelude.catMaybes
                 [(JSON..=) "CatalogId" Prelude.<$> catalogId,
                  (JSON..=) "ConnectionName" Prelude.<$> connectionName])))
instance Property "CatalogId" GlueTablesProperty where
  type PropertyType "CatalogId" GlueTablesProperty = Value Prelude.Text
  set newValue GlueTablesProperty {..}
    = GlueTablesProperty {catalogId = Prelude.pure newValue, ..}
instance Property "ConnectionName" GlueTablesProperty where
  type PropertyType "ConnectionName" GlueTablesProperty = Value Prelude.Text
  set newValue GlueTablesProperty {..}
    = GlueTablesProperty {connectionName = Prelude.pure newValue, ..}
instance Property "DatabaseName" GlueTablesProperty where
  type PropertyType "DatabaseName" GlueTablesProperty = Value Prelude.Text
  set newValue GlueTablesProperty {..}
    = GlueTablesProperty {databaseName = newValue, ..}
instance Property "TableName" GlueTablesProperty where
  type PropertyType "TableName" GlueTablesProperty = Value Prelude.Text
  set newValue GlueTablesProperty {..}
    = GlueTablesProperty {tableName = newValue, ..}