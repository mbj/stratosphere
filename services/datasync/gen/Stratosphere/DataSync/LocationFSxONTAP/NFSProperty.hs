module Stratosphere.DataSync.LocationFSxONTAP.NFSProperty (
        module Exports, NFSProperty(..), mkNFSProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.LocationFSxONTAP.NfsMountOptionsProperty as Exports
import Stratosphere.ResourceProperties
data NFSProperty
  = NFSProperty {mountOptions :: NfsMountOptionsProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNFSProperty :: NfsMountOptionsProperty -> NFSProperty
mkNFSProperty mountOptions
  = NFSProperty {mountOptions = mountOptions}
instance ToResourceProperties NFSProperty where
  toResourceProperties NFSProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationFSxONTAP.NFS",
         supportsTags = Prelude.False,
         properties = ["MountOptions" JSON..= mountOptions]}
instance JSON.ToJSON NFSProperty where
  toJSON NFSProperty {..}
    = JSON.object ["MountOptions" JSON..= mountOptions]
instance Property "MountOptions" NFSProperty where
  type PropertyType "MountOptions" NFSProperty = NfsMountOptionsProperty
  set newValue NFSProperty {}
    = NFSProperty {mountOptions = newValue, ..}