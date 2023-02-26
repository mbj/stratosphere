module Stratosphere.SageMaker.ModelCard.EvaluationDetailProperty (
        module Exports, EvaluationDetailProperty(..),
        mkEvaluationDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.MetricGroupProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EvaluationDetailProperty
  = EvaluationDetailProperty {datasets :: (Prelude.Maybe (ValueList Prelude.Text)),
                              evaluationJobArn :: (Prelude.Maybe (Value Prelude.Text)),
                              evaluationObservation :: (Prelude.Maybe (Value Prelude.Text)),
                              metadata :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                              metricGroups :: (Prelude.Maybe [MetricGroupProperty]),
                              name :: (Value Prelude.Text)}
mkEvaluationDetailProperty ::
  Value Prelude.Text -> EvaluationDetailProperty
mkEvaluationDetailProperty name
  = EvaluationDetailProperty
      {name = name, datasets = Prelude.Nothing,
       evaluationJobArn = Prelude.Nothing,
       evaluationObservation = Prelude.Nothing,
       metadata = Prelude.Nothing, metricGroups = Prelude.Nothing}
instance ToResourceProperties EvaluationDetailProperty where
  toResourceProperties EvaluationDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.EvaluationDetail",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Datasets" Prelude.<$> datasets,
                               (JSON..=) "EvaluationJobArn" Prelude.<$> evaluationJobArn,
                               (JSON..=) "EvaluationObservation"
                                 Prelude.<$> evaluationObservation,
                               (JSON..=) "Metadata" Prelude.<$> metadata,
                               (JSON..=) "MetricGroups" Prelude.<$> metricGroups]))}
instance JSON.ToJSON EvaluationDetailProperty where
  toJSON EvaluationDetailProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Datasets" Prelude.<$> datasets,
                  (JSON..=) "EvaluationJobArn" Prelude.<$> evaluationJobArn,
                  (JSON..=) "EvaluationObservation"
                    Prelude.<$> evaluationObservation,
                  (JSON..=) "Metadata" Prelude.<$> metadata,
                  (JSON..=) "MetricGroups" Prelude.<$> metricGroups])))
instance Property "Datasets" EvaluationDetailProperty where
  type PropertyType "Datasets" EvaluationDetailProperty = ValueList Prelude.Text
  set newValue EvaluationDetailProperty {..}
    = EvaluationDetailProperty {datasets = Prelude.pure newValue, ..}
instance Property "EvaluationJobArn" EvaluationDetailProperty where
  type PropertyType "EvaluationJobArn" EvaluationDetailProperty = Value Prelude.Text
  set newValue EvaluationDetailProperty {..}
    = EvaluationDetailProperty
        {evaluationJobArn = Prelude.pure newValue, ..}
instance Property "EvaluationObservation" EvaluationDetailProperty where
  type PropertyType "EvaluationObservation" EvaluationDetailProperty = Value Prelude.Text
  set newValue EvaluationDetailProperty {..}
    = EvaluationDetailProperty
        {evaluationObservation = Prelude.pure newValue, ..}
instance Property "Metadata" EvaluationDetailProperty where
  type PropertyType "Metadata" EvaluationDetailProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue EvaluationDetailProperty {..}
    = EvaluationDetailProperty {metadata = Prelude.pure newValue, ..}
instance Property "MetricGroups" EvaluationDetailProperty where
  type PropertyType "MetricGroups" EvaluationDetailProperty = [MetricGroupProperty]
  set newValue EvaluationDetailProperty {..}
    = EvaluationDetailProperty
        {metricGroups = Prelude.pure newValue, ..}
instance Property "Name" EvaluationDetailProperty where
  type PropertyType "Name" EvaluationDetailProperty = Value Prelude.Text
  set newValue EvaluationDetailProperty {..}
    = EvaluationDetailProperty {name = newValue, ..}