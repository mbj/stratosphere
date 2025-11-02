module Stratosphere.SageMaker.FeatureGroup.OnlineStoreSecurityConfigProperty (
        OnlineStoreSecurityConfigProperty(..),
        mkOnlineStoreSecurityConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OnlineStoreSecurityConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-featuregroup-onlinestoresecurityconfig.html>
    OnlineStoreSecurityConfigProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-featuregroup-onlinestoresecurityconfig.html#cfn-sagemaker-featuregroup-onlinestoresecurityconfig-kmskeyid>
                                       kmsKeyId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOnlineStoreSecurityConfigProperty ::
  OnlineStoreSecurityConfigProperty
mkOnlineStoreSecurityConfigProperty
  = OnlineStoreSecurityConfigProperty
      {haddock_workaround_ = (), kmsKeyId = Prelude.Nothing}
instance ToResourceProperties OnlineStoreSecurityConfigProperty where
  toResourceProperties OnlineStoreSecurityConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::FeatureGroup.OnlineStoreSecurityConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId])}
instance JSON.ToJSON OnlineStoreSecurityConfigProperty where
  toJSON OnlineStoreSecurityConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId]))
instance Property "KmsKeyId" OnlineStoreSecurityConfigProperty where
  type PropertyType "KmsKeyId" OnlineStoreSecurityConfigProperty = Value Prelude.Text
  set newValue OnlineStoreSecurityConfigProperty {..}
    = OnlineStoreSecurityConfigProperty
        {kmsKeyId = Prelude.pure newValue, ..}