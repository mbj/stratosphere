module Stratosphere.SageMaker.Model.ModelAccessConfigProperty (
        ModelAccessConfigProperty(..), mkModelAccessConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModelAccessConfigProperty
  = ModelAccessConfigProperty {acceptEula :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelAccessConfigProperty ::
  Value Prelude.Bool -> ModelAccessConfigProperty
mkModelAccessConfigProperty acceptEula
  = ModelAccessConfigProperty {acceptEula = acceptEula}
instance ToResourceProperties ModelAccessConfigProperty where
  toResourceProperties ModelAccessConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Model.ModelAccessConfig",
         supportsTags = Prelude.False,
         properties = ["AcceptEula" JSON..= acceptEula]}
instance JSON.ToJSON ModelAccessConfigProperty where
  toJSON ModelAccessConfigProperty {..}
    = JSON.object ["AcceptEula" JSON..= acceptEula]
instance Property "AcceptEula" ModelAccessConfigProperty where
  type PropertyType "AcceptEula" ModelAccessConfigProperty = Value Prelude.Bool
  set newValue ModelAccessConfigProperty {}
    = ModelAccessConfigProperty {acceptEula = newValue, ..}