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
  = EncryptionConfigProperty {provider :: (Prelude.Maybe ProviderProperty),
                              resources :: (Prelude.Maybe (ValueList Prelude.Text))}
mkEncryptionConfigProperty :: EncryptionConfigProperty
mkEncryptionConfigProperty
  = EncryptionConfigProperty
      {provider = Prelude.Nothing, resources = Prelude.Nothing}
instance ToResourceProperties EncryptionConfigProperty where
  toResourceProperties EncryptionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.EncryptionConfig",
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