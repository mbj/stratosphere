module Stratosphere.CleanRooms.ConfiguredTable (
        module Exports, ConfiguredTable(..), mkConfiguredTable
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTable.AnalysisRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTable.TableReferenceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ConfiguredTable
  = ConfiguredTable {allowedColumns :: (ValueList Prelude.Text),
                     analysisMethod :: (Value Prelude.Text),
                     analysisRules :: (Prelude.Maybe [AnalysisRuleProperty]),
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     name :: (Value Prelude.Text),
                     tableReference :: TableReferenceProperty,
                     tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfiguredTable ::
  ValueList Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> TableReferenceProperty -> ConfiguredTable
mkConfiguredTable allowedColumns analysisMethod name tableReference
  = ConfiguredTable
      {allowedColumns = allowedColumns, analysisMethod = analysisMethod,
       name = name, tableReference = tableReference,
       analysisRules = Prelude.Nothing, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ConfiguredTable where
  toResourceProperties ConfiguredTable {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTable",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AllowedColumns" JSON..= allowedColumns,
                            "AnalysisMethod" JSON..= analysisMethod, "Name" JSON..= name,
                            "TableReference" JSON..= tableReference]
                           (Prelude.catMaybes
                              [(JSON..=) "AnalysisRules" Prelude.<$> analysisRules,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ConfiguredTable where
  toJSON ConfiguredTable {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AllowedColumns" JSON..= allowedColumns,
               "AnalysisMethod" JSON..= analysisMethod, "Name" JSON..= name,
               "TableReference" JSON..= tableReference]
              (Prelude.catMaybes
                 [(JSON..=) "AnalysisRules" Prelude.<$> analysisRules,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AllowedColumns" ConfiguredTable where
  type PropertyType "AllowedColumns" ConfiguredTable = ValueList Prelude.Text
  set newValue ConfiguredTable {..}
    = ConfiguredTable {allowedColumns = newValue, ..}
instance Property "AnalysisMethod" ConfiguredTable where
  type PropertyType "AnalysisMethod" ConfiguredTable = Value Prelude.Text
  set newValue ConfiguredTable {..}
    = ConfiguredTable {analysisMethod = newValue, ..}
instance Property "AnalysisRules" ConfiguredTable where
  type PropertyType "AnalysisRules" ConfiguredTable = [AnalysisRuleProperty]
  set newValue ConfiguredTable {..}
    = ConfiguredTable {analysisRules = Prelude.pure newValue, ..}
instance Property "Description" ConfiguredTable where
  type PropertyType "Description" ConfiguredTable = Value Prelude.Text
  set newValue ConfiguredTable {..}
    = ConfiguredTable {description = Prelude.pure newValue, ..}
instance Property "Name" ConfiguredTable where
  type PropertyType "Name" ConfiguredTable = Value Prelude.Text
  set newValue ConfiguredTable {..}
    = ConfiguredTable {name = newValue, ..}
instance Property "TableReference" ConfiguredTable where
  type PropertyType "TableReference" ConfiguredTable = TableReferenceProperty
  set newValue ConfiguredTable {..}
    = ConfiguredTable {tableReference = newValue, ..}
instance Property "Tags" ConfiguredTable where
  type PropertyType "Tags" ConfiguredTable = [Tag]
  set newValue ConfiguredTable {..}
    = ConfiguredTable {tags = Prelude.pure newValue, ..}