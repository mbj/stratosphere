module Stratosphere.SageMaker.ModelPackage.ModelCardProperty (
        ModelCardProperty(..), mkModelCardProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModelCardProperty
  = ModelCardProperty {modelCardContent :: (Value Prelude.Text),
                       modelCardStatus :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelCardProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ModelCardProperty
mkModelCardProperty modelCardContent modelCardStatus
  = ModelCardProperty
      {modelCardContent = modelCardContent,
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