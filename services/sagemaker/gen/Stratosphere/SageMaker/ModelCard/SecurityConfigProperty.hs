module Stratosphere.SageMaker.ModelCard.SecurityConfigProperty (
        SecurityConfigProperty(..), mkSecurityConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-securityconfig.html>
    SecurityConfigProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-securityconfig.html#cfn-sagemaker-modelcard-securityconfig-kmskeyid>
                            kmsKeyId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityConfigProperty :: SecurityConfigProperty
mkSecurityConfigProperty
  = SecurityConfigProperty
      {haddock_workaround_ = (), kmsKeyId = Prelude.Nothing}
instance ToResourceProperties SecurityConfigProperty where
  toResourceProperties SecurityConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.SecurityConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId])}
instance JSON.ToJSON SecurityConfigProperty where
  toJSON SecurityConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId]))
instance Property "KmsKeyId" SecurityConfigProperty where
  type PropertyType "KmsKeyId" SecurityConfigProperty = Value Prelude.Text
  set newValue SecurityConfigProperty {..}
    = SecurityConfigProperty {kmsKeyId = Prelude.pure newValue, ..}