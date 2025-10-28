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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferenceexperiment-shadowmodeconfig.html>
    ShadowModeConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferenceexperiment-shadowmodeconfig.html#cfn-sagemaker-inferenceexperiment-shadowmodeconfig-shadowmodelvariants>
                              shadowModelVariants :: [ShadowModelVariantConfigProperty],
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferenceexperiment-shadowmodeconfig.html#cfn-sagemaker-inferenceexperiment-shadowmodeconfig-sourcemodelvariantname>
                              sourceModelVariantName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkShadowModeConfigProperty ::
  [ShadowModelVariantConfigProperty]
  -> Value Prelude.Text -> ShadowModeConfigProperty
mkShadowModeConfigProperty
  shadowModelVariants
  sourceModelVariantName
  = ShadowModeConfigProperty
      {haddock_workaround_ = (),
       shadowModelVariants = shadowModelVariants,
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