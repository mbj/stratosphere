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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables.html>
    InputRecordTablesProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables.html#cfn-glue-mltransform-inputrecordtables-gluetables>
                               glueTables :: (Prelude.Maybe [GlueTablesProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputRecordTablesProperty :: InputRecordTablesProperty
mkInputRecordTablesProperty
  = InputRecordTablesProperty
      {haddock_workaround_ = (), glueTables = Prelude.Nothing}
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
  set newValue InputRecordTablesProperty {..}
    = InputRecordTablesProperty
        {glueTables = Prelude.pure newValue, ..}