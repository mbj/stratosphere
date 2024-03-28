module Stratosphere.Glue.DataQualityRuleset.DataQualityTargetTableProperty (
        DataQualityTargetTableProperty(..),
        mkDataQualityTargetTableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataQualityTargetTableProperty
  = DataQualityTargetTableProperty {databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                                    tableName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataQualityTargetTableProperty :: DataQualityTargetTableProperty
mkDataQualityTargetTableProperty
  = DataQualityTargetTableProperty
      {databaseName = Prelude.Nothing, tableName = Prelude.Nothing}
instance ToResourceProperties DataQualityTargetTableProperty where
  toResourceProperties DataQualityTargetTableProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::DataQualityRuleset.DataQualityTargetTable",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "TableName" Prelude.<$> tableName])}
instance JSON.ToJSON DataQualityTargetTableProperty where
  toJSON DataQualityTargetTableProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "TableName" Prelude.<$> tableName]))
instance Property "DatabaseName" DataQualityTargetTableProperty where
  type PropertyType "DatabaseName" DataQualityTargetTableProperty = Value Prelude.Text
  set newValue DataQualityTargetTableProperty {..}
    = DataQualityTargetTableProperty
        {databaseName = Prelude.pure newValue, ..}
instance Property "TableName" DataQualityTargetTableProperty where
  type PropertyType "TableName" DataQualityTargetTableProperty = Value Prelude.Text
  set newValue DataQualityTargetTableProperty {..}
    = DataQualityTargetTableProperty
        {tableName = Prelude.pure newValue, ..}