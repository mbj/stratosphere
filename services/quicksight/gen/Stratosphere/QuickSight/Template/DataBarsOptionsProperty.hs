module Stratosphere.QuickSight.Template.DataBarsOptionsProperty (
        DataBarsOptionsProperty(..), mkDataBarsOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataBarsOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-databarsoptions.html>
    DataBarsOptionsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-databarsoptions.html#cfn-quicksight-template-databarsoptions-fieldid>
                             fieldId :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-databarsoptions.html#cfn-quicksight-template-databarsoptions-negativecolor>
                             negativeColor :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-databarsoptions.html#cfn-quicksight-template-databarsoptions-positivecolor>
                             positiveColor :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataBarsOptionsProperty ::
  Value Prelude.Text -> DataBarsOptionsProperty
mkDataBarsOptionsProperty fieldId
  = DataBarsOptionsProperty
      {haddock_workaround_ = (), fieldId = fieldId,
       negativeColor = Prelude.Nothing, positiveColor = Prelude.Nothing}
instance ToResourceProperties DataBarsOptionsProperty where
  toResourceProperties DataBarsOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.DataBarsOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FieldId" JSON..= fieldId]
                           (Prelude.catMaybes
                              [(JSON..=) "NegativeColor" Prelude.<$> negativeColor,
                               (JSON..=) "PositiveColor" Prelude.<$> positiveColor]))}
instance JSON.ToJSON DataBarsOptionsProperty where
  toJSON DataBarsOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FieldId" JSON..= fieldId]
              (Prelude.catMaybes
                 [(JSON..=) "NegativeColor" Prelude.<$> negativeColor,
                  (JSON..=) "PositiveColor" Prelude.<$> positiveColor])))
instance Property "FieldId" DataBarsOptionsProperty where
  type PropertyType "FieldId" DataBarsOptionsProperty = Value Prelude.Text
  set newValue DataBarsOptionsProperty {..}
    = DataBarsOptionsProperty {fieldId = newValue, ..}
instance Property "NegativeColor" DataBarsOptionsProperty where
  type PropertyType "NegativeColor" DataBarsOptionsProperty = Value Prelude.Text
  set newValue DataBarsOptionsProperty {..}
    = DataBarsOptionsProperty
        {negativeColor = Prelude.pure newValue, ..}
instance Property "PositiveColor" DataBarsOptionsProperty where
  type PropertyType "PositiveColor" DataBarsOptionsProperty = Value Prelude.Text
  set newValue DataBarsOptionsProperty {..}
    = DataBarsOptionsProperty
        {positiveColor = Prelude.pure newValue, ..}