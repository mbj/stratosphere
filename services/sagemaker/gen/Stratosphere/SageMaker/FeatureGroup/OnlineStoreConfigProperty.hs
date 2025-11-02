module Stratosphere.SageMaker.FeatureGroup.OnlineStoreConfigProperty (
        module Exports, OnlineStoreConfigProperty(..),
        mkOnlineStoreConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.FeatureGroup.OnlineStoreSecurityConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.FeatureGroup.TtlDurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OnlineStoreConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-featuregroup-onlinestoreconfig.html>
    OnlineStoreConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-featuregroup-onlinestoreconfig.html#cfn-sagemaker-featuregroup-onlinestoreconfig-enableonlinestore>
                               enableOnlineStore :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-featuregroup-onlinestoreconfig.html#cfn-sagemaker-featuregroup-onlinestoreconfig-securityconfig>
                               securityConfig :: (Prelude.Maybe OnlineStoreSecurityConfigProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-featuregroup-onlinestoreconfig.html#cfn-sagemaker-featuregroup-onlinestoreconfig-storagetype>
                               storageType :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-featuregroup-onlinestoreconfig.html#cfn-sagemaker-featuregroup-onlinestoreconfig-ttlduration>
                               ttlDuration :: (Prelude.Maybe TtlDurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOnlineStoreConfigProperty :: OnlineStoreConfigProperty
mkOnlineStoreConfigProperty
  = OnlineStoreConfigProperty
      {haddock_workaround_ = (), enableOnlineStore = Prelude.Nothing,
       securityConfig = Prelude.Nothing, storageType = Prelude.Nothing,
       ttlDuration = Prelude.Nothing}
instance ToResourceProperties OnlineStoreConfigProperty where
  toResourceProperties OnlineStoreConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::FeatureGroup.OnlineStoreConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnableOnlineStore" Prelude.<$> enableOnlineStore,
                            (JSON..=) "SecurityConfig" Prelude.<$> securityConfig,
                            (JSON..=) "StorageType" Prelude.<$> storageType,
                            (JSON..=) "TtlDuration" Prelude.<$> ttlDuration])}
instance JSON.ToJSON OnlineStoreConfigProperty where
  toJSON OnlineStoreConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnableOnlineStore" Prelude.<$> enableOnlineStore,
               (JSON..=) "SecurityConfig" Prelude.<$> securityConfig,
               (JSON..=) "StorageType" Prelude.<$> storageType,
               (JSON..=) "TtlDuration" Prelude.<$> ttlDuration]))
instance Property "EnableOnlineStore" OnlineStoreConfigProperty where
  type PropertyType "EnableOnlineStore" OnlineStoreConfigProperty = Value Prelude.Bool
  set newValue OnlineStoreConfigProperty {..}
    = OnlineStoreConfigProperty
        {enableOnlineStore = Prelude.pure newValue, ..}
instance Property "SecurityConfig" OnlineStoreConfigProperty where
  type PropertyType "SecurityConfig" OnlineStoreConfigProperty = OnlineStoreSecurityConfigProperty
  set newValue OnlineStoreConfigProperty {..}
    = OnlineStoreConfigProperty
        {securityConfig = Prelude.pure newValue, ..}
instance Property "StorageType" OnlineStoreConfigProperty where
  type PropertyType "StorageType" OnlineStoreConfigProperty = Value Prelude.Text
  set newValue OnlineStoreConfigProperty {..}
    = OnlineStoreConfigProperty
        {storageType = Prelude.pure newValue, ..}
instance Property "TtlDuration" OnlineStoreConfigProperty where
  type PropertyType "TtlDuration" OnlineStoreConfigProperty = TtlDurationProperty
  set newValue OnlineStoreConfigProperty {..}
    = OnlineStoreConfigProperty
        {ttlDuration = Prelude.pure newValue, ..}