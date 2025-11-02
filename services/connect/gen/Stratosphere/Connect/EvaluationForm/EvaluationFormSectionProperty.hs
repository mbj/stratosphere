module Stratosphere.Connect.EvaluationForm.EvaluationFormSectionProperty (
        module Exports, EvaluationFormSectionProperty(..),
        mkEvaluationFormSectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.EvaluationFormItemProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EvaluationFormSectionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformsection.html>
    EvaluationFormSectionProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformsection.html#cfn-connect-evaluationform-evaluationformsection-instructions>
                                   instructions :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformsection.html#cfn-connect-evaluationform-evaluationformsection-items>
                                   items :: (Prelude.Maybe [EvaluationFormItemProperty]),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformsection.html#cfn-connect-evaluationform-evaluationformsection-refid>
                                   refId :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformsection.html#cfn-connect-evaluationform-evaluationformsection-title>
                                   title :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-evaluationformsection.html#cfn-connect-evaluationform-evaluationformsection-weight>
                                   weight :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationFormSectionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EvaluationFormSectionProperty
mkEvaluationFormSectionProperty refId title
  = EvaluationFormSectionProperty
      {haddock_workaround_ = (), refId = refId, title = title,
       instructions = Prelude.Nothing, items = Prelude.Nothing,
       weight = Prelude.Nothing}
instance ToResourceProperties EvaluationFormSectionProperty where
  toResourceProperties EvaluationFormSectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.EvaluationFormSection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RefId" JSON..= refId, "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "Instructions" Prelude.<$> instructions,
                               (JSON..=) "Items" Prelude.<$> items,
                               (JSON..=) "Weight" Prelude.<$> weight]))}
instance JSON.ToJSON EvaluationFormSectionProperty where
  toJSON EvaluationFormSectionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RefId" JSON..= refId, "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "Instructions" Prelude.<$> instructions,
                  (JSON..=) "Items" Prelude.<$> items,
                  (JSON..=) "Weight" Prelude.<$> weight])))
instance Property "Instructions" EvaluationFormSectionProperty where
  type PropertyType "Instructions" EvaluationFormSectionProperty = Value Prelude.Text
  set newValue EvaluationFormSectionProperty {..}
    = EvaluationFormSectionProperty
        {instructions = Prelude.pure newValue, ..}
instance Property "Items" EvaluationFormSectionProperty where
  type PropertyType "Items" EvaluationFormSectionProperty = [EvaluationFormItemProperty]
  set newValue EvaluationFormSectionProperty {..}
    = EvaluationFormSectionProperty {items = Prelude.pure newValue, ..}
instance Property "RefId" EvaluationFormSectionProperty where
  type PropertyType "RefId" EvaluationFormSectionProperty = Value Prelude.Text
  set newValue EvaluationFormSectionProperty {..}
    = EvaluationFormSectionProperty {refId = newValue, ..}
instance Property "Title" EvaluationFormSectionProperty where
  type PropertyType "Title" EvaluationFormSectionProperty = Value Prelude.Text
  set newValue EvaluationFormSectionProperty {..}
    = EvaluationFormSectionProperty {title = newValue, ..}
instance Property "Weight" EvaluationFormSectionProperty where
  type PropertyType "Weight" EvaluationFormSectionProperty = Value Prelude.Double
  set newValue EvaluationFormSectionProperty {..}
    = EvaluationFormSectionProperty
        {weight = Prelude.pure newValue, ..}