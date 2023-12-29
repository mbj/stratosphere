module Stratosphere.SageMaker.EndpointConfig.ClarifyInferenceConfigProperty (
        module Exports, ClarifyInferenceConfigProperty(..),
        mkClarifyInferenceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.EndpointConfig.ClarifyFeatureTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.EndpointConfig.ClarifyHeaderProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClarifyInferenceConfigProperty
  = ClarifyInferenceConfigProperty {contentTemplate :: (Prelude.Maybe (Value Prelude.Text)),
                                    featureHeaders :: (Prelude.Maybe [ClarifyHeaderProperty]),
                                    featureTypes :: (Prelude.Maybe [ClarifyFeatureTypeProperty]),
                                    featuresAttribute :: (Prelude.Maybe (Value Prelude.Text)),
                                    labelAttribute :: (Prelude.Maybe (Value Prelude.Text)),
                                    labelHeaders :: (Prelude.Maybe [ClarifyHeaderProperty]),
                                    labelIndex :: (Prelude.Maybe (Value Prelude.Integer)),
                                    maxPayloadInMB :: (Prelude.Maybe (Value Prelude.Integer)),
                                    maxRecordCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                    probabilityAttribute :: (Prelude.Maybe (Value Prelude.Text)),
                                    probabilityIndex :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClarifyInferenceConfigProperty :: ClarifyInferenceConfigProperty
mkClarifyInferenceConfigProperty
  = ClarifyInferenceConfigProperty
      {contentTemplate = Prelude.Nothing,
       featureHeaders = Prelude.Nothing, featureTypes = Prelude.Nothing,
       featuresAttribute = Prelude.Nothing,
       labelAttribute = Prelude.Nothing, labelHeaders = Prelude.Nothing,
       labelIndex = Prelude.Nothing, maxPayloadInMB = Prelude.Nothing,
       maxRecordCount = Prelude.Nothing,
       probabilityAttribute = Prelude.Nothing,
       probabilityIndex = Prelude.Nothing}
instance ToResourceProperties ClarifyInferenceConfigProperty where
  toResourceProperties ClarifyInferenceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig.ClarifyInferenceConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContentTemplate" Prelude.<$> contentTemplate,
                            (JSON..=) "FeatureHeaders" Prelude.<$> featureHeaders,
                            (JSON..=) "FeatureTypes" Prelude.<$> featureTypes,
                            (JSON..=) "FeaturesAttribute" Prelude.<$> featuresAttribute,
                            (JSON..=) "LabelAttribute" Prelude.<$> labelAttribute,
                            (JSON..=) "LabelHeaders" Prelude.<$> labelHeaders,
                            (JSON..=) "LabelIndex" Prelude.<$> labelIndex,
                            (JSON..=) "MaxPayloadInMB" Prelude.<$> maxPayloadInMB,
                            (JSON..=) "MaxRecordCount" Prelude.<$> maxRecordCount,
                            (JSON..=) "ProbabilityAttribute" Prelude.<$> probabilityAttribute,
                            (JSON..=) "ProbabilityIndex" Prelude.<$> probabilityIndex])}
instance JSON.ToJSON ClarifyInferenceConfigProperty where
  toJSON ClarifyInferenceConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContentTemplate" Prelude.<$> contentTemplate,
               (JSON..=) "FeatureHeaders" Prelude.<$> featureHeaders,
               (JSON..=) "FeatureTypes" Prelude.<$> featureTypes,
               (JSON..=) "FeaturesAttribute" Prelude.<$> featuresAttribute,
               (JSON..=) "LabelAttribute" Prelude.<$> labelAttribute,
               (JSON..=) "LabelHeaders" Prelude.<$> labelHeaders,
               (JSON..=) "LabelIndex" Prelude.<$> labelIndex,
               (JSON..=) "MaxPayloadInMB" Prelude.<$> maxPayloadInMB,
               (JSON..=) "MaxRecordCount" Prelude.<$> maxRecordCount,
               (JSON..=) "ProbabilityAttribute" Prelude.<$> probabilityAttribute,
               (JSON..=) "ProbabilityIndex" Prelude.<$> probabilityIndex]))
instance Property "ContentTemplate" ClarifyInferenceConfigProperty where
  type PropertyType "ContentTemplate" ClarifyInferenceConfigProperty = Value Prelude.Text
  set newValue ClarifyInferenceConfigProperty {..}
    = ClarifyInferenceConfigProperty
        {contentTemplate = Prelude.pure newValue, ..}
instance Property "FeatureHeaders" ClarifyInferenceConfigProperty where
  type PropertyType "FeatureHeaders" ClarifyInferenceConfigProperty = [ClarifyHeaderProperty]
  set newValue ClarifyInferenceConfigProperty {..}
    = ClarifyInferenceConfigProperty
        {featureHeaders = Prelude.pure newValue, ..}
instance Property "FeatureTypes" ClarifyInferenceConfigProperty where
  type PropertyType "FeatureTypes" ClarifyInferenceConfigProperty = [ClarifyFeatureTypeProperty]
  set newValue ClarifyInferenceConfigProperty {..}
    = ClarifyInferenceConfigProperty
        {featureTypes = Prelude.pure newValue, ..}
instance Property "FeaturesAttribute" ClarifyInferenceConfigProperty where
  type PropertyType "FeaturesAttribute" ClarifyInferenceConfigProperty = Value Prelude.Text
  set newValue ClarifyInferenceConfigProperty {..}
    = ClarifyInferenceConfigProperty
        {featuresAttribute = Prelude.pure newValue, ..}
instance Property "LabelAttribute" ClarifyInferenceConfigProperty where
  type PropertyType "LabelAttribute" ClarifyInferenceConfigProperty = Value Prelude.Text
  set newValue ClarifyInferenceConfigProperty {..}
    = ClarifyInferenceConfigProperty
        {labelAttribute = Prelude.pure newValue, ..}
instance Property "LabelHeaders" ClarifyInferenceConfigProperty where
  type PropertyType "LabelHeaders" ClarifyInferenceConfigProperty = [ClarifyHeaderProperty]
  set newValue ClarifyInferenceConfigProperty {..}
    = ClarifyInferenceConfigProperty
        {labelHeaders = Prelude.pure newValue, ..}
instance Property "LabelIndex" ClarifyInferenceConfigProperty where
  type PropertyType "LabelIndex" ClarifyInferenceConfigProperty = Value Prelude.Integer
  set newValue ClarifyInferenceConfigProperty {..}
    = ClarifyInferenceConfigProperty
        {labelIndex = Prelude.pure newValue, ..}
instance Property "MaxPayloadInMB" ClarifyInferenceConfigProperty where
  type PropertyType "MaxPayloadInMB" ClarifyInferenceConfigProperty = Value Prelude.Integer
  set newValue ClarifyInferenceConfigProperty {..}
    = ClarifyInferenceConfigProperty
        {maxPayloadInMB = Prelude.pure newValue, ..}
instance Property "MaxRecordCount" ClarifyInferenceConfigProperty where
  type PropertyType "MaxRecordCount" ClarifyInferenceConfigProperty = Value Prelude.Integer
  set newValue ClarifyInferenceConfigProperty {..}
    = ClarifyInferenceConfigProperty
        {maxRecordCount = Prelude.pure newValue, ..}
instance Property "ProbabilityAttribute" ClarifyInferenceConfigProperty where
  type PropertyType "ProbabilityAttribute" ClarifyInferenceConfigProperty = Value Prelude.Text
  set newValue ClarifyInferenceConfigProperty {..}
    = ClarifyInferenceConfigProperty
        {probabilityAttribute = Prelude.pure newValue, ..}
instance Property "ProbabilityIndex" ClarifyInferenceConfigProperty where
  type PropertyType "ProbabilityIndex" ClarifyInferenceConfigProperty = Value Prelude.Integer
  set newValue ClarifyInferenceConfigProperty {..}
    = ClarifyInferenceConfigProperty
        {probabilityIndex = Prelude.pure newValue, ..}