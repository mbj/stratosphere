module Stratosphere.Connect.EvaluationForm (
        module Exports, EvaluationForm(..), mkEvaluationForm
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.EvaluationFormBaseItemProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.EvaluationForm.ScoringStrategyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EvaluationForm
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-evaluationform.html>
    EvaluationForm {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-evaluationform.html#cfn-connect-evaluationform-description>
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-evaluationform.html#cfn-connect-evaluationform-instancearn>
                    instanceArn :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-evaluationform.html#cfn-connect-evaluationform-items>
                    items :: [EvaluationFormBaseItemProperty],
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-evaluationform.html#cfn-connect-evaluationform-scoringstrategy>
                    scoringStrategy :: (Prelude.Maybe ScoringStrategyProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-evaluationform.html#cfn-connect-evaluationform-status>
                    status :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-evaluationform.html#cfn-connect-evaluationform-tags>
                    tags :: (Prelude.Maybe [Tag]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-evaluationform.html#cfn-connect-evaluationform-title>
                    title :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationForm ::
  Value Prelude.Text
  -> [EvaluationFormBaseItemProperty]
     -> Value Prelude.Text -> Value Prelude.Text -> EvaluationForm
mkEvaluationForm instanceArn items status title
  = EvaluationForm
      {haddock_workaround_ = (), instanceArn = instanceArn,
       items = items, status = status, title = title,
       description = Prelude.Nothing, scoringStrategy = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties EvaluationForm where
  toResourceProperties EvaluationForm {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceArn" JSON..= instanceArn, "Items" JSON..= items,
                            "Status" JSON..= status, "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ScoringStrategy" Prelude.<$> scoringStrategy,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON EvaluationForm where
  toJSON EvaluationForm {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceArn" JSON..= instanceArn, "Items" JSON..= items,
               "Status" JSON..= status, "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ScoringStrategy" Prelude.<$> scoringStrategy,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" EvaluationForm where
  type PropertyType "Description" EvaluationForm = Value Prelude.Text
  set newValue EvaluationForm {..}
    = EvaluationForm {description = Prelude.pure newValue, ..}
instance Property "InstanceArn" EvaluationForm where
  type PropertyType "InstanceArn" EvaluationForm = Value Prelude.Text
  set newValue EvaluationForm {..}
    = EvaluationForm {instanceArn = newValue, ..}
instance Property "Items" EvaluationForm where
  type PropertyType "Items" EvaluationForm = [EvaluationFormBaseItemProperty]
  set newValue EvaluationForm {..}
    = EvaluationForm {items = newValue, ..}
instance Property "ScoringStrategy" EvaluationForm where
  type PropertyType "ScoringStrategy" EvaluationForm = ScoringStrategyProperty
  set newValue EvaluationForm {..}
    = EvaluationForm {scoringStrategy = Prelude.pure newValue, ..}
instance Property "Status" EvaluationForm where
  type PropertyType "Status" EvaluationForm = Value Prelude.Text
  set newValue EvaluationForm {..}
    = EvaluationForm {status = newValue, ..}
instance Property "Tags" EvaluationForm where
  type PropertyType "Tags" EvaluationForm = [Tag]
  set newValue EvaluationForm {..}
    = EvaluationForm {tags = Prelude.pure newValue, ..}
instance Property "Title" EvaluationForm where
  type PropertyType "Title" EvaluationForm = Value Prelude.Text
  set newValue EvaluationForm {..}
    = EvaluationForm {title = newValue, ..}