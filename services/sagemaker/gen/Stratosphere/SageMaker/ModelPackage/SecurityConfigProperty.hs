module Stratosphere.SageMaker.ModelPackage.SecurityConfigProperty (
        SecurityConfigProperty(..), mkSecurityConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityConfigProperty
  = SecurityConfigProperty {kmsKeyId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityConfigProperty ::
  Value Prelude.Text -> SecurityConfigProperty
mkSecurityConfigProperty kmsKeyId
  = SecurityConfigProperty {kmsKeyId = kmsKeyId}
instance ToResourceProperties SecurityConfigProperty where
  toResourceProperties SecurityConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.SecurityConfig",
         supportsTags = Prelude.False,
         properties = ["KmsKeyId" JSON..= kmsKeyId]}
instance JSON.ToJSON SecurityConfigProperty where
  toJSON SecurityConfigProperty {..}
    = JSON.object ["KmsKeyId" JSON..= kmsKeyId]
instance Property "KmsKeyId" SecurityConfigProperty where
  type PropertyType "KmsKeyId" SecurityConfigProperty = Value Prelude.Text
  set newValue SecurityConfigProperty {}
    = SecurityConfigProperty {kmsKeyId = newValue, ..}