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
  = OnlineStoreSecurityConfigProperty {kmsKeyId :: (Prelude.Maybe (Value Prelude.Text))}
mkOnlineStoreSecurityConfigProperty ::
  OnlineStoreSecurityConfigProperty
mkOnlineStoreSecurityConfigProperty
  = OnlineStoreSecurityConfigProperty {kmsKeyId = Prelude.Nothing}
instance ToResourceProperties OnlineStoreSecurityConfigProperty where
  toResourceProperties OnlineStoreSecurityConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::FeatureGroup.OnlineStoreSecurityConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId])}
instance JSON.ToJSON OnlineStoreSecurityConfigProperty where
  toJSON OnlineStoreSecurityConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId]))
instance Property "KmsKeyId" OnlineStoreSecurityConfigProperty where
  type PropertyType "KmsKeyId" OnlineStoreSecurityConfigProperty = Value Prelude.Text
  set newValue OnlineStoreSecurityConfigProperty {}
    = OnlineStoreSecurityConfigProperty
        {kmsKeyId = Prelude.pure newValue, ..}