module Stratosphere.DataSync.LocationFSxOpenZFS.ProtocolProperty (
        module Exports, ProtocolProperty(..), mkProtocolProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.LocationFSxOpenZFS.NFSProperty as Exports
import Stratosphere.ResourceProperties
data ProtocolProperty
  = ProtocolProperty {nFS :: (Prelude.Maybe NFSProperty)}
mkProtocolProperty :: ProtocolProperty
mkProtocolProperty = ProtocolProperty {nFS = Prelude.Nothing}
instance ToResourceProperties ProtocolProperty where
  toResourceProperties ProtocolProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationFSxOpenZFS.Protocol",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "NFS" Prelude.<$> nFS])}
instance JSON.ToJSON ProtocolProperty where
  toJSON ProtocolProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "NFS" Prelude.<$> nFS]))
instance Property "NFS" ProtocolProperty where
  type PropertyType "NFS" ProtocolProperty = NFSProperty
  set newValue ProtocolProperty {}
    = ProtocolProperty {nFS = Prelude.pure newValue, ..}