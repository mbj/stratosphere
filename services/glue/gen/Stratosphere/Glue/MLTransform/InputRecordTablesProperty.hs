module Stratosphere.Glue.MLTransform.InputRecordTablesProperty (
        module Exports, InputRecordTablesProperty(..),
        mkInputRecordTablesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.MLTransform.GlueTablesProperty as Exports
import Stratosphere.ResourceProperties
data InputRecordTablesProperty
  = InputRecordTablesProperty {glueTables :: (Prelude.Maybe [GlueTablesProperty])}
mkInputRecordTablesProperty :: InputRecordTablesProperty
mkInputRecordTablesProperty
  = InputRecordTablesProperty {glueTables = Prelude.Nothing}
instance ToResourceProperties InputRecordTablesProperty where
  toResourceProperties InputRecordTablesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::MLTransform.InputRecordTables",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GlueTables" Prelude.<$> glueTables])}
instance JSON.ToJSON InputRecordTablesProperty where
  toJSON InputRecordTablesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GlueTables" Prelude.<$> glueTables]))
instance Property "GlueTables" InputRecordTablesProperty where
  type PropertyType "GlueTables" InputRecordTablesProperty = [GlueTablesProperty]
  set newValue InputRecordTablesProperty {}
    = InputRecordTablesProperty
        {glueTables = Prelude.pure newValue, ..}