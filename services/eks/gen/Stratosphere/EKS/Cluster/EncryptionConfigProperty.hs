module Stratosphere.EKS.Cluster.EncryptionConfigProperty (
        module Exports, EncryptionConfigProperty(..),
        mkEncryptionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EKS.Cluster.ProviderProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-encryptionconfig.html>
    EncryptionConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-encryptionconfig.html#cfn-eks-cluster-encryptionconfig-provider>
                              provider :: (Prelude.Maybe ProviderProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-encryptionconfig.html#cfn-eks-cluster-encryptionconfig-resources>
                              resources :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionConfigProperty :: EncryptionConfigProperty
mkEncryptionConfigProperty
  = EncryptionConfigProperty
      {haddock_workaround_ = (), provider = Prelude.Nothing,
       resources = Prelude.Nothing}
instance ToResourceProperties EncryptionConfigProperty where
  toResourceProperties EncryptionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.EncryptionConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Provider" Prelude.<$> provider,
                            (JSON..=) "Resources" Prelude.<$> resources])}
instance JSON.ToJSON EncryptionConfigProperty where
  toJSON EncryptionConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Provider" Prelude.<$> provider,
               (JSON..=) "Resources" Prelude.<$> resources]))
instance Property "Provider" EncryptionConfigProperty where
  type PropertyType "Provider" EncryptionConfigProperty = ProviderProperty
  set newValue EncryptionConfigProperty {..}
    = EncryptionConfigProperty {provider = Prelude.pure newValue, ..}
instance Property "Resources" EncryptionConfigProperty where
  type PropertyType "Resources" EncryptionConfigProperty = ValueList Prelude.Text
  set newValue EncryptionConfigProperty {..}
    = EncryptionConfigProperty {resources = Prelude.pure newValue, ..}