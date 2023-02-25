module Stratosphere.DataSync.LocationFSxOpenZFS.NFSProperty (
        module Exports, NFSProperty(..), mkNFSProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.LocationFSxOpenZFS.MountOptionsProperty as Exports
import Stratosphere.ResourceProperties
data NFSProperty
  = NFSProperty {mountOptions :: MountOptionsProperty}
mkNFSProperty :: MountOptionsProperty -> NFSProperty
mkNFSProperty mountOptions
  = NFSProperty {mountOptions = mountOptions}
instance ToResourceProperties NFSProperty where
  toResourceProperties NFSProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationFSxOpenZFS.NFS",
         properties = ["MountOptions" JSON..= mountOptions]}
instance JSON.ToJSON NFSProperty where
  toJSON NFSProperty {..}
    = JSON.object ["MountOptions" JSON..= mountOptions]
instance Property "MountOptions" NFSProperty where
  type PropertyType "MountOptions" NFSProperty = MountOptionsProperty
  set newValue NFSProperty {}
    = NFSProperty {mountOptions = newValue, ..}