module Stratosphere.SageMaker.ModelPackage.ModelCardProperty (
        ModelCardProperty(..), mkModelCardProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModelCardProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modelcard.html>
    ModelCardProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modelcard.html#cfn-sagemaker-modelpackage-modelcard-modelcardcontent>
                       modelCardContent :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modelcard.html#cfn-sagemaker-modelpackage-modelcard-modelcardstatus>
                       modelCardStatus :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelCardProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ModelCardProperty
mkModelCardProperty modelCardContent modelCardStatus
  = ModelCardProperty
      {haddock_workaround_ = (), modelCardContent = modelCardContent,
       modelCardStatus = modelCardStatus}
instance ToResourceProperties ModelCardProperty where
  toResourceProperties ModelCardProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.ModelCard",
         supportsTags = Prelude.False,
         properties = ["ModelCardContent" JSON..= modelCardContent,
                       "ModelCardStatus" JSON..= modelCardStatus]}
instance JSON.ToJSON ModelCardProperty where
  toJSON ModelCardProperty {..}
    = JSON.object
        ["ModelCardContent" JSON..= modelCardContent,
         "ModelCardStatus" JSON..= modelCardStatus]
instance Property "ModelCardContent" ModelCardProperty where
  type PropertyType "ModelCardContent" ModelCardProperty = Value Prelude.Text
  set newValue ModelCardProperty {..}
    = ModelCardProperty {modelCardContent = newValue, ..}
instance Property "ModelCardStatus" ModelCardProperty where
  type PropertyType "ModelCardStatus" ModelCardProperty = Value Prelude.Text
  set newValue ModelCardProperty {..}
    = ModelCardProperty {modelCardStatus = newValue, ..}