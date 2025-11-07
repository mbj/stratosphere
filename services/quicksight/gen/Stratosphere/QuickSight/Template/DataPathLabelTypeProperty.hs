module Stratosphere.QuickSight.Template.DataPathLabelTypeProperty (
        DataPathLabelTypeProperty(..), mkDataPathLabelTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataPathLabelTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datapathlabeltype.html>
    DataPathLabelTypeProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datapathlabeltype.html#cfn-quicksight-template-datapathlabeltype-fieldid>
                               fieldId :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datapathlabeltype.html#cfn-quicksight-template-datapathlabeltype-fieldvalue>
                               fieldValue :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datapathlabeltype.html#cfn-quicksight-template-datapathlabeltype-visibility>
                               visibility :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataPathLabelTypeProperty :: DataPathLabelTypeProperty
mkDataPathLabelTypeProperty
  = DataPathLabelTypeProperty
      {haddock_workaround_ = (), fieldId = Prelude.Nothing,
       fieldValue = Prelude.Nothing, visibility = Prelude.Nothing}
instance ToResourceProperties DataPathLabelTypeProperty where
  toResourceProperties DataPathLabelTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.DataPathLabelType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FieldId" Prelude.<$> fieldId,
                            (JSON..=) "FieldValue" Prelude.<$> fieldValue,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON DataPathLabelTypeProperty where
  toJSON DataPathLabelTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FieldId" Prelude.<$> fieldId,
               (JSON..=) "FieldValue" Prelude.<$> fieldValue,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "FieldId" DataPathLabelTypeProperty where
  type PropertyType "FieldId" DataPathLabelTypeProperty = Value Prelude.Text
  set newValue DataPathLabelTypeProperty {..}
    = DataPathLabelTypeProperty {fieldId = Prelude.pure newValue, ..}
instance Property "FieldValue" DataPathLabelTypeProperty where
  type PropertyType "FieldValue" DataPathLabelTypeProperty = Value Prelude.Text
  set newValue DataPathLabelTypeProperty {..}
    = DataPathLabelTypeProperty
        {fieldValue = Prelude.pure newValue, ..}
instance Property "Visibility" DataPathLabelTypeProperty where
  type PropertyType "Visibility" DataPathLabelTypeProperty = JSON.Object
  set newValue DataPathLabelTypeProperty {..}
    = DataPathLabelTypeProperty
        {visibility = Prelude.pure newValue, ..}