module Stratosphere.CleanRooms.ConfiguredTable.AthenaTableReferenceProperty (
        AthenaTableReferenceProperty(..), mkAthenaTableReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AthenaTableReferenceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-athenatablereference.html>
    AthenaTableReferenceProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-athenatablereference.html#cfn-cleanrooms-configuredtable-athenatablereference-databasename>
                                  databaseName :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-athenatablereference.html#cfn-cleanrooms-configuredtable-athenatablereference-outputlocation>
                                  outputLocation :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-athenatablereference.html#cfn-cleanrooms-configuredtable-athenatablereference-tablename>
                                  tableName :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-athenatablereference.html#cfn-cleanrooms-configuredtable-athenatablereference-workgroup>
                                  workGroup :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAthenaTableReferenceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> AthenaTableReferenceProperty
mkAthenaTableReferenceProperty databaseName tableName workGroup
  = AthenaTableReferenceProperty
      {haddock_workaround_ = (), databaseName = databaseName,
       tableName = tableName, workGroup = workGroup,
       outputLocation = Prelude.Nothing}
instance ToResourceProperties AthenaTableReferenceProperty where
  toResourceProperties AthenaTableReferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTable.AthenaTableReference",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatabaseName" JSON..= databaseName,
                            "TableName" JSON..= tableName, "WorkGroup" JSON..= workGroup]
                           (Prelude.catMaybes
                              [(JSON..=) "OutputLocation" Prelude.<$> outputLocation]))}
instance JSON.ToJSON AthenaTableReferenceProperty where
  toJSON AthenaTableReferenceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatabaseName" JSON..= databaseName,
               "TableName" JSON..= tableName, "WorkGroup" JSON..= workGroup]
              (Prelude.catMaybes
                 [(JSON..=) "OutputLocation" Prelude.<$> outputLocation])))
instance Property "DatabaseName" AthenaTableReferenceProperty where
  type PropertyType "DatabaseName" AthenaTableReferenceProperty = Value Prelude.Text
  set newValue AthenaTableReferenceProperty {..}
    = AthenaTableReferenceProperty {databaseName = newValue, ..}
instance Property "OutputLocation" AthenaTableReferenceProperty where
  type PropertyType "OutputLocation" AthenaTableReferenceProperty = Value Prelude.Text
  set newValue AthenaTableReferenceProperty {..}
    = AthenaTableReferenceProperty
        {outputLocation = Prelude.pure newValue, ..}
instance Property "TableName" AthenaTableReferenceProperty where
  type PropertyType "TableName" AthenaTableReferenceProperty = Value Prelude.Text
  set newValue AthenaTableReferenceProperty {..}
    = AthenaTableReferenceProperty {tableName = newValue, ..}
instance Property "WorkGroup" AthenaTableReferenceProperty where
  type PropertyType "WorkGroup" AthenaTableReferenceProperty = Value Prelude.Text
  set newValue AthenaTableReferenceProperty {..}
    = AthenaTableReferenceProperty {workGroup = newValue, ..}