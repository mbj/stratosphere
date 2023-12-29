module Stratosphere.AppMesh.VirtualNode.TlsValidationContextTrustProperty (
        module Exports, TlsValidationContextTrustProperty(..),
        mkTlsValidationContextTrustProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.TlsValidationContextAcmTrustProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.TlsValidationContextFileTrustProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.TlsValidationContextSdsTrustProperty as Exports
import Stratosphere.ResourceProperties
data TlsValidationContextTrustProperty
  = TlsValidationContextTrustProperty {aCM :: (Prelude.Maybe TlsValidationContextAcmTrustProperty),
                                       file :: (Prelude.Maybe TlsValidationContextFileTrustProperty),
                                       sDS :: (Prelude.Maybe TlsValidationContextSdsTrustProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTlsValidationContextTrustProperty ::
  TlsValidationContextTrustProperty
mkTlsValidationContextTrustProperty
  = TlsValidationContextTrustProperty
      {aCM = Prelude.Nothing, file = Prelude.Nothing,
       sDS = Prelude.Nothing}
instance ToResourceProperties TlsValidationContextTrustProperty where
  toResourceProperties TlsValidationContextTrustProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.TlsValidationContextTrust",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ACM" Prelude.<$> aCM,
                            (JSON..=) "File" Prelude.<$> file,
                            (JSON..=) "SDS" Prelude.<$> sDS])}
instance JSON.ToJSON TlsValidationContextTrustProperty where
  toJSON TlsValidationContextTrustProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ACM" Prelude.<$> aCM,
               (JSON..=) "File" Prelude.<$> file,
               (JSON..=) "SDS" Prelude.<$> sDS]))
instance Property "ACM" TlsValidationContextTrustProperty where
  type PropertyType "ACM" TlsValidationContextTrustProperty = TlsValidationContextAcmTrustProperty
  set newValue TlsValidationContextTrustProperty {..}
    = TlsValidationContextTrustProperty
        {aCM = Prelude.pure newValue, ..}
instance Property "File" TlsValidationContextTrustProperty where
  type PropertyType "File" TlsValidationContextTrustProperty = TlsValidationContextFileTrustProperty
  set newValue TlsValidationContextTrustProperty {..}
    = TlsValidationContextTrustProperty
        {file = Prelude.pure newValue, ..}
instance Property "SDS" TlsValidationContextTrustProperty where
  type PropertyType "SDS" TlsValidationContextTrustProperty = TlsValidationContextSdsTrustProperty
  set newValue TlsValidationContextTrustProperty {..}
    = TlsValidationContextTrustProperty
        {sDS = Prelude.pure newValue, ..}