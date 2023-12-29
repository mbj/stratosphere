module Stratosphere.MSK.Cluster.EncryptionInfoProperty (
        module Exports, EncryptionInfoProperty(..),
        mkEncryptionInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.Cluster.EncryptionAtRestProperty as Exports
import {-# SOURCE #-} Stratosphere.MSK.Cluster.EncryptionInTransitProperty as Exports
import Stratosphere.ResourceProperties
data EncryptionInfoProperty
  = EncryptionInfoProperty {encryptionAtRest :: (Prelude.Maybe EncryptionAtRestProperty),
                            encryptionInTransit :: (Prelude.Maybe EncryptionInTransitProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionInfoProperty :: EncryptionInfoProperty
mkEncryptionInfoProperty
  = EncryptionInfoProperty
      {encryptionAtRest = Prelude.Nothing,
       encryptionInTransit = Prelude.Nothing}
instance ToResourceProperties EncryptionInfoProperty where
  toResourceProperties EncryptionInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.EncryptionInfo",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EncryptionAtRest" Prelude.<$> encryptionAtRest,
                            (JSON..=) "EncryptionInTransit" Prelude.<$> encryptionInTransit])}
instance JSON.ToJSON EncryptionInfoProperty where
  toJSON EncryptionInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EncryptionAtRest" Prelude.<$> encryptionAtRest,
               (JSON..=) "EncryptionInTransit" Prelude.<$> encryptionInTransit]))
instance Property "EncryptionAtRest" EncryptionInfoProperty where
  type PropertyType "EncryptionAtRest" EncryptionInfoProperty = EncryptionAtRestProperty
  set newValue EncryptionInfoProperty {..}
    = EncryptionInfoProperty
        {encryptionAtRest = Prelude.pure newValue, ..}
instance Property "EncryptionInTransit" EncryptionInfoProperty where
  type PropertyType "EncryptionInTransit" EncryptionInfoProperty = EncryptionInTransitProperty
  set newValue EncryptionInfoProperty {..}
    = EncryptionInfoProperty
        {encryptionInTransit = Prelude.pure newValue, ..}