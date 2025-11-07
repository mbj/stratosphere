module Stratosphere.QuickSight.Template.ColumnGroupSchemaProperty (
        module Exports, ColumnGroupSchemaProperty(..),
        mkColumnGroupSchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnGroupColumnSchemaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnGroupSchemaProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-columngroupschema.html>
    ColumnGroupSchemaProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-columngroupschema.html#cfn-quicksight-template-columngroupschema-columngroupcolumnschemalist>
                               columnGroupColumnSchemaList :: (Prelude.Maybe [ColumnGroupColumnSchemaProperty]),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-columngroupschema.html#cfn-quicksight-template-columngroupschema-name>
                               name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColumnGroupSchemaProperty :: ColumnGroupSchemaProperty
mkColumnGroupSchemaProperty
  = ColumnGroupSchemaProperty
      {haddock_workaround_ = (),
       columnGroupColumnSchemaList = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties ColumnGroupSchemaProperty where
  toResourceProperties ColumnGroupSchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ColumnGroupSchema",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColumnGroupColumnSchemaList"
                              Prelude.<$> columnGroupColumnSchemaList,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON ColumnGroupSchemaProperty where
  toJSON ColumnGroupSchemaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColumnGroupColumnSchemaList"
                 Prelude.<$> columnGroupColumnSchemaList,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "ColumnGroupColumnSchemaList" ColumnGroupSchemaProperty where
  type PropertyType "ColumnGroupColumnSchemaList" ColumnGroupSchemaProperty = [ColumnGroupColumnSchemaProperty]
  set newValue ColumnGroupSchemaProperty {..}
    = ColumnGroupSchemaProperty
        {columnGroupColumnSchemaList = Prelude.pure newValue, ..}
instance Property "Name" ColumnGroupSchemaProperty where
  type PropertyType "Name" ColumnGroupSchemaProperty = Value Prelude.Text
  set newValue ColumnGroupSchemaProperty {..}
    = ColumnGroupSchemaProperty {name = Prelude.pure newValue, ..}