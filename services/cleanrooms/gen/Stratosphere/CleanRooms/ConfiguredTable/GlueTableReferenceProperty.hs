module Stratosphere.CleanRooms.ConfiguredTable.GlueTableReferenceProperty (
        GlueTableReferenceProperty(..), mkGlueTableReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlueTableReferenceProperty
  = GlueTableReferenceProperty {databaseName :: (Value Prelude.Text),
                                tableName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlueTableReferenceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> GlueTableReferenceProperty
mkGlueTableReferenceProperty databaseName tableName
  = GlueTableReferenceProperty
      {databaseName = databaseName, tableName = tableName}
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