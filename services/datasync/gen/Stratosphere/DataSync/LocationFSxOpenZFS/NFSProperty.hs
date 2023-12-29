module Stratosphere.DataSync.LocationFSxOpenZFS.NFSProperty (
        module Exports, NFSProperty(..), mkNFSProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.LocationFSxOpenZFS.MountOptionsProperty as Exports
import Stratosphere.ResourceProperties
data NFSProperty
  = NFSProperty {mountOptions :: MountOptionsProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNFSProperty :: MountOptionsProperty -> NFSProperty
mkNFSProperty mountOptions
  = NFSProperty {mountOptions = mountOptions}
instance ToResourceProperties NFSProperty where
  toResourceProperties NFSProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationFSxOpenZFS.NFS",
         supportsTags = Prelude.False,
         properties = ["MountOptions" JSON..= mountOptions]}
instance JSON.ToJSON NFSProperty where
  toJSON NFSProperty {..}
    = JSON.object ["MountOptions" JSON..= mountOptions]
instance Property "MountOptions" NFSProperty where
  type PropertyType "MountOptions" NFSProperty = MountOptionsProperty
  set newValue NFSProperty {}
    = NFSProperty {mountOptions = newValue, ..}