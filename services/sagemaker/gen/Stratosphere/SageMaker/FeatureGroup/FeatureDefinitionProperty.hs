module Stratosphere.SageMaker.FeatureGroup.FeatureDefinitionProperty (
        FeatureDefinitionProperty(..), mkFeatureDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FeatureDefinitionProperty
  = FeatureDefinitionProperty {featureName :: (Value Prelude.Text),
                               featureType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFeatureDefinitionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> FeatureDefinitionProperty
mkFeatureDefinitionProperty featureName featureType
  = FeatureDefinitionProperty
      {featureName = featureName, featureType = featureType}
instance ToResourceProperties FeatureDefinitionProperty where
  toResourceProperties FeatureDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::FeatureGroup.FeatureDefinition",
         supportsTags = Prelude.False,
         properties = ["FeatureName" JSON..= featureName,
                       "FeatureType" JSON..= featureType]}
instance JSON.ToJSON FeatureDefinitionProperty where
  toJSON FeatureDefinitionProperty {..}
    = JSON.object
        ["FeatureName" JSON..= featureName,
         "FeatureType" JSON..= featureType]
instance Property "FeatureName" FeatureDefinitionProperty where
  type PropertyType "FeatureName" FeatureDefinitionProperty = Value Prelude.Text
  set newValue FeatureDefinitionProperty {..}
    = FeatureDefinitionProperty {featureName = newValue, ..}
instance Property "FeatureType" FeatureDefinitionProperty where
  type PropertyType "FeatureType" FeatureDefinitionProperty = Value Prelude.Text
  set newValue FeatureDefinitionProperty {..}
    = FeatureDefinitionProperty {featureType = newValue, ..}