module Stratosphere.MediaConnect.Flow.NdiConfigProperty (
        module Exports, NdiConfigProperty(..), mkNdiConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.NdiDiscoveryServerConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NdiConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-ndiconfig.html>
    NdiConfigProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-ndiconfig.html#cfn-mediaconnect-flow-ndiconfig-machinename>
                       machineName :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-ndiconfig.html#cfn-mediaconnect-flow-ndiconfig-ndidiscoveryservers>
                       ndiDiscoveryServers :: (Prelude.Maybe [NdiDiscoveryServerConfigProperty]),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-ndiconfig.html#cfn-mediaconnect-flow-ndiconfig-ndistate>
                       ndiState :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNdiConfigProperty :: NdiConfigProperty
mkNdiConfigProperty
  = NdiConfigProperty
      {haddock_workaround_ = (), machineName = Prelude.Nothing,
       ndiDiscoveryServers = Prelude.Nothing, ndiState = Prelude.Nothing}
instance ToResourceProperties NdiConfigProperty where
  toResourceProperties NdiConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow.NdiConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MachineName" Prelude.<$> machineName,
                            (JSON..=) "NdiDiscoveryServers" Prelude.<$> ndiDiscoveryServers,
                            (JSON..=) "NdiState" Prelude.<$> ndiState])}
instance JSON.ToJSON NdiConfigProperty where
  toJSON NdiConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MachineName" Prelude.<$> machineName,
               (JSON..=) "NdiDiscoveryServers" Prelude.<$> ndiDiscoveryServers,
               (JSON..=) "NdiState" Prelude.<$> ndiState]))
instance Property "MachineName" NdiConfigProperty where
  type PropertyType "MachineName" NdiConfigProperty = Value Prelude.Text
  set newValue NdiConfigProperty {..}
    = NdiConfigProperty {machineName = Prelude.pure newValue, ..}
instance Property "NdiDiscoveryServers" NdiConfigProperty where
  type PropertyType "NdiDiscoveryServers" NdiConfigProperty = [NdiDiscoveryServerConfigProperty]
  set newValue NdiConfigProperty {..}
    = NdiConfigProperty
        {ndiDiscoveryServers = Prelude.pure newValue, ..}
instance Property "NdiState" NdiConfigProperty where
  type PropertyType "NdiState" NdiConfigProperty = Value Prelude.Text
  set newValue NdiConfigProperty {..}
    = NdiConfigProperty {ndiState = Prelude.pure newValue, ..}