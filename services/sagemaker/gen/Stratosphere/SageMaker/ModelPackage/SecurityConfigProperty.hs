module Stratosphere.SageMaker.ModelPackage.SecurityConfigProperty (
        SecurityConfigProperty(..), mkSecurityConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-securityconfig.html>
    SecurityConfigProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-securityconfig.html#cfn-sagemaker-modelpackage-securityconfig-kmskeyid>
                            kmsKeyId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityConfigProperty ::
  Value Prelude.Text -> SecurityConfigProperty
mkSecurityConfigProperty kmsKeyId
  = SecurityConfigProperty
      {haddock_workaround_ = (), kmsKeyId = kmsKeyId}
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
  set newValue SecurityConfigProperty {..}
    = SecurityConfigProperty {kmsKeyId = newValue, ..}