module Stratosphere.SageMaker.InferenceExperiment.ShadowModeConfigProperty (
        module Exports, ShadowModeConfigProperty(..),
        mkShadowModeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.InferenceExperiment.ShadowModelVariantConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ShadowModeConfigProperty
  = ShadowModeConfigProperty {shadowModelVariants :: [ShadowModelVariantConfigProperty],
                              sourceModelVariantName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkShadowModeConfigProperty ::
  [ShadowModelVariantConfigProperty]
  -> Value Prelude.Text -> ShadowModeConfigProperty
mkShadowModeConfigProperty
  shadowModelVariants
  sourceModelVariantName
  = ShadowModeConfigProperty
      {shadowModelVariants = shadowModelVariants,
       sourceModelVariantName = sourceModelVariantName}
instance ToResourceProperties ShadowModeConfigProperty where
  toResourceProperties ShadowModeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::InferenceExperiment.ShadowModeConfig",
         supportsTags = Prelude.False,
         properties = ["ShadowModelVariants" JSON..= shadowModelVariants,
                       "SourceModelVariantName" JSON..= sourceModelVariantName]}
instance JSON.ToJSON ShadowModeConfigProperty where
  toJSON ShadowModeConfigProperty {..}
    = JSON.object
        ["ShadowModelVariants" JSON..= shadowModelVariants,
         "SourceModelVariantName" JSON..= sourceModelVariantName]
instance Property "ShadowModelVariants" ShadowModeConfigProperty where
  type PropertyType "ShadowModelVariants" ShadowModeConfigProperty = [ShadowModelVariantConfigProperty]
  set newValue ShadowModeConfigProperty {..}
    = ShadowModeConfigProperty {shadowModelVariants = newValue, ..}
instance Property "SourceModelVariantName" ShadowModeConfigProperty where
  type PropertyType "SourceModelVariantName" ShadowModeConfigProperty = Value Prelude.Text
  set newValue ShadowModeConfigProperty {..}
    = ShadowModeConfigProperty {sourceModelVariantName = newValue, ..}