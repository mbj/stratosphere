module Stratosphere.SageMaker.EndpointConfig.ClarifyTextConfigProperty (
        ClarifyTextConfigProperty(..), mkClarifyTextConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClarifyTextConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-clarifytextconfig.html>
    ClarifyTextConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-clarifytextconfig.html#cfn-sagemaker-endpointconfig-clarifytextconfig-granularity>
                               granularity :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-clarifytextconfig.html#cfn-sagemaker-endpointconfig-clarifytextconfig-language>
                               language :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClarifyTextConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ClarifyTextConfigProperty
mkClarifyTextConfigProperty granularity language
  = ClarifyTextConfigProperty
      {haddock_workaround_ = (), granularity = granularity,
       language = language}
instance ToResourceProperties ClarifyTextConfigProperty where
  toResourceProperties ClarifyTextConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig.ClarifyTextConfig",
         supportsTags = Prelude.False,
         properties = ["Granularity" JSON..= granularity,
                       "Language" JSON..= language]}
instance JSON.ToJSON ClarifyTextConfigProperty where
  toJSON ClarifyTextConfigProperty {..}
    = JSON.object
        ["Granularity" JSON..= granularity, "Language" JSON..= language]
instance Property "Granularity" ClarifyTextConfigProperty where
  type PropertyType "Granularity" ClarifyTextConfigProperty = Value Prelude.Text
  set newValue ClarifyTextConfigProperty {..}
    = ClarifyTextConfigProperty {granularity = newValue, ..}
instance Property "Language" ClarifyTextConfigProperty where
  type PropertyType "Language" ClarifyTextConfigProperty = Value Prelude.Text
  set newValue ClarifyTextConfigProperty {..}
    = ClarifyTextConfigProperty {language = newValue, ..}