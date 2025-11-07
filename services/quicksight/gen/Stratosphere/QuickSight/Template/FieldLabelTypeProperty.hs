module Stratosphere.QuickSight.Template.FieldLabelTypeProperty (
        FieldLabelTypeProperty(..), mkFieldLabelTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldLabelTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-fieldlabeltype.html>
    FieldLabelTypeProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-fieldlabeltype.html#cfn-quicksight-template-fieldlabeltype-fieldid>
                            fieldId :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-fieldlabeltype.html#cfn-quicksight-template-fieldlabeltype-visibility>
                            visibility :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldLabelTypeProperty :: FieldLabelTypeProperty
mkFieldLabelTypeProperty
  = FieldLabelTypeProperty
      {haddock_workaround_ = (), fieldId = Prelude.Nothing,
       visibility = Prelude.Nothing}
instance ToResourceProperties FieldLabelTypeProperty where
  toResourceProperties FieldLabelTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FieldLabelType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FieldId" Prelude.<$> fieldId,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON FieldLabelTypeProperty where
  toJSON FieldLabelTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FieldId" Prelude.<$> fieldId,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "FieldId" FieldLabelTypeProperty where
  type PropertyType "FieldId" FieldLabelTypeProperty = Value Prelude.Text
  set newValue FieldLabelTypeProperty {..}
    = FieldLabelTypeProperty {fieldId = Prelude.pure newValue, ..}
instance Property "Visibility" FieldLabelTypeProperty where
  type PropertyType "Visibility" FieldLabelTypeProperty = JSON.Object
  set newValue FieldLabelTypeProperty {..}
    = FieldLabelTypeProperty {visibility = Prelude.pure newValue, ..}