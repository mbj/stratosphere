module Stratosphere.DataSync.LocationFSxONTAP.ProtocolProperty (
        module Exports, ProtocolProperty(..), mkProtocolProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.LocationFSxONTAP.NFSProperty as Exports
import {-# SOURCE #-} Stratosphere.DataSync.LocationFSxONTAP.SMBProperty as Exports
import Stratosphere.ResourceProperties
data ProtocolProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationfsxontap-protocol.html>
    ProtocolProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationfsxontap-protocol.html#cfn-datasync-locationfsxontap-protocol-nfs>
                      nFS :: (Prelude.Maybe NFSProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationfsxontap-protocol.html#cfn-datasync-locationfsxontap-protocol-smb>
                      sMB :: (Prelude.Maybe SMBProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProtocolProperty :: ProtocolProperty
mkProtocolProperty
  = ProtocolProperty
      {haddock_workaround_ = (), nFS = Prelude.Nothing,
       sMB = Prelude.Nothing}
instance ToResourceProperties ProtocolProperty where
  toResourceProperties ProtocolProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationFSxONTAP.Protocol",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NFS" Prelude.<$> nFS,
                            (JSON..=) "SMB" Prelude.<$> sMB])}
instance JSON.ToJSON ProtocolProperty where
  toJSON ProtocolProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NFS" Prelude.<$> nFS,
               (JSON..=) "SMB" Prelude.<$> sMB]))
instance Property "NFS" ProtocolProperty where
  type PropertyType "NFS" ProtocolProperty = NFSProperty
  set newValue ProtocolProperty {..}
    = ProtocolProperty {nFS = Prelude.pure newValue, ..}
instance Property "SMB" ProtocolProperty where
  type PropertyType "SMB" ProtocolProperty = SMBProperty
  set newValue ProtocolProperty {..}
    = ProtocolProperty {sMB = Prelude.pure newValue, ..}