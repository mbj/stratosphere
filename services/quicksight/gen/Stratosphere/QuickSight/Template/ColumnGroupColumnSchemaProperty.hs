module Stratosphere.QuickSight.Template.ColumnGroupColumnSchemaProperty (
        ColumnGroupColumnSchemaProperty(..),
        mkColumnGroupColumnSchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnGroupColumnSchemaProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-columngroupcolumnschema.html>
    ColumnGroupColumnSchemaProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-columngroupcolumnschema.html#cfn-quicksight-template-columngroupcolumnschema-name>
                                     name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColumnGroupColumnSchemaProperty ::
  ColumnGroupColumnSchemaProperty
mkColumnGroupColumnSchemaProperty
  = ColumnGroupColumnSchemaProperty
      {haddock_workaround_ = (), name = Prelude.Nothing}
instance ToResourceProperties ColumnGroupColumnSchemaProperty where
  toResourceProperties ColumnGroupColumnSchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ColumnGroupColumnSchema",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON ColumnGroupColumnSchemaProperty where
  toJSON ColumnGroupColumnSchemaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))
instance Property "Name" ColumnGroupColumnSchemaProperty where
  type PropertyType "Name" ColumnGroupColumnSchemaProperty = Value Prelude.Text
  set newValue ColumnGroupColumnSchemaProperty {..}
    = ColumnGroupColumnSchemaProperty
        {name = Prelude.pure newValue, ..}