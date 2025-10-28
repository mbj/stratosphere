module Stratosphere.CleanRooms.ConfiguredTable.GlueTableReferenceProperty (
        GlueTableReferenceProperty(..), mkGlueTableReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlueTableReferenceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-gluetablereference.html>
    GlueTableReferenceProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-gluetablereference.html#cfn-cleanrooms-configuredtable-gluetablereference-databasename>
                                databaseName :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-gluetablereference.html#cfn-cleanrooms-configuredtable-gluetablereference-tablename>
                                tableName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlueTableReferenceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> GlueTableReferenceProperty
mkGlueTableReferenceProperty databaseName tableName
  = GlueTableReferenceProperty
      {haddock_workaround_ = (), databaseName = databaseName,
       tableName = tableName}
instance ToResourceProperties GlueTableReferenceProperty where
  toResourceProperties GlueTableReferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTable.GlueTableReference",
         supportsTags = Prelude.False,
         properties = ["DatabaseName" JSON..= databaseName,
                       "TableName" JSON..= tableName]}
instance JSON.ToJSON GlueTableReferenceProperty where
  toJSON GlueTableReferenceProperty {..}
    = JSON.object
        ["DatabaseName" JSON..= databaseName,
         "TableName" JSON..= tableName]
instance Property "DatabaseName" GlueTableReferenceProperty where
  type PropertyType "DatabaseName" GlueTableReferenceProperty = Value Prelude.Text
  set newValue GlueTableReferenceProperty {..}
    = GlueTableReferenceProperty {databaseName = newValue, ..}
instance Property "TableName" GlueTableReferenceProperty where
  type PropertyType "TableName" GlueTableReferenceProperty = Value Prelude.Text
  set newValue GlueTableReferenceProperty {..}
    = GlueTableReferenceProperty {tableName = newValue, ..}