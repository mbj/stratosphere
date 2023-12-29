module Stratosphere.SageMaker.InferenceExperiment.ShadowModelVariantConfigProperty (
        ShadowModelVariantConfigProperty(..),
        mkShadowModelVariantConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ShadowModelVariantConfigProperty
  = ShadowModelVariantConfigProperty {samplingPercentage :: (Value Prelude.Integer),
                                      shadowModelVariantName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkShadowModelVariantConfigProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> ShadowModelVariantConfigProperty
mkShadowModelVariantConfigProperty
  samplingPercentage
  shadowModelVariantName
  = ShadowModelVariantConfigProperty
      {samplingPercentage = samplingPercentage,
       shadowModelVariantName = shadowModelVariantName}
instance ToResourceProperties ShadowModelVariantConfigProperty where
  toResourceProperties ShadowModelVariantConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::InferenceExperiment.ShadowModelVariantConfig",
         supportsTags = Prelude.False,
         properties = ["SamplingPercentage" JSON..= samplingPercentage,
                       "ShadowModelVariantName" JSON..= shadowModelVariantName]}
instance JSON.ToJSON ShadowModelVariantConfigProperty where
  toJSON ShadowModelVariantConfigProperty {..}
    = JSON.object
        ["SamplingPercentage" JSON..= samplingPercentage,
         "ShadowModelVariantName" JSON..= shadowModelVariantName]
instance Property "SamplingPercentage" ShadowModelVariantConfigProperty where
  type PropertyType "SamplingPercentage" ShadowModelVariantConfigProperty = Value Prelude.Integer
  set newValue ShadowModelVariantConfigProperty {..}
    = ShadowModelVariantConfigProperty
        {samplingPercentage = newValue, ..}
instance Property "ShadowModelVariantName" ShadowModelVariantConfigProperty where
  type PropertyType "ShadowModelVariantName" ShadowModelVariantConfigProperty = Value Prelude.Text
  set newValue ShadowModelVariantConfigProperty {..}
    = ShadowModelVariantConfigProperty
        {shadowModelVariantName = newValue, ..}