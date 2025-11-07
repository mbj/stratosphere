module Stratosphere.MediaConnect.Flow.NdiDiscoveryServerConfigProperty (
        NdiDiscoveryServerConfigProperty(..),
        mkNdiDiscoveryServerConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NdiDiscoveryServerConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-ndidiscoveryserverconfig.html>
    NdiDiscoveryServerConfigProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-ndidiscoveryserverconfig.html#cfn-mediaconnect-flow-ndidiscoveryserverconfig-discoveryserveraddress>
                                      discoveryServerAddress :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-ndidiscoveryserverconfig.html#cfn-mediaconnect-flow-ndidiscoveryserverconfig-discoveryserverport>
                                      discoveryServerPort :: (Prelude.Maybe (Value Prelude.Integer)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-ndidiscoveryserverconfig.html#cfn-mediaconnect-flow-ndidiscoveryserverconfig-vpcinterfaceadapter>
                                      vpcInterfaceAdapter :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNdiDiscoveryServerConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> NdiDiscoveryServerConfigProperty
mkNdiDiscoveryServerConfigProperty
  discoveryServerAddress
  vpcInterfaceAdapter
  = NdiDiscoveryServerConfigProperty
      {haddock_workaround_ = (),
       discoveryServerAddress = discoveryServerAddress,
       vpcInterfaceAdapter = vpcInterfaceAdapter,
       discoveryServerPort = Prelude.Nothing}
instance ToResourceProperties NdiDiscoveryServerConfigProperty where
  toResourceProperties NdiDiscoveryServerConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow.NdiDiscoveryServerConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DiscoveryServerAddress" JSON..= discoveryServerAddress,
                            "VpcInterfaceAdapter" JSON..= vpcInterfaceAdapter]
                           (Prelude.catMaybes
                              [(JSON..=) "DiscoveryServerPort"
                                 Prelude.<$> discoveryServerPort]))}
instance JSON.ToJSON NdiDiscoveryServerConfigProperty where
  toJSON NdiDiscoveryServerConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DiscoveryServerAddress" JSON..= discoveryServerAddress,
               "VpcInterfaceAdapter" JSON..= vpcInterfaceAdapter]
              (Prelude.catMaybes
                 [(JSON..=) "DiscoveryServerPort"
                    Prelude.<$> discoveryServerPort])))
instance Property "DiscoveryServerAddress" NdiDiscoveryServerConfigProperty where
  type PropertyType "DiscoveryServerAddress" NdiDiscoveryServerConfigProperty = Value Prelude.Text
  set newValue NdiDiscoveryServerConfigProperty {..}
    = NdiDiscoveryServerConfigProperty
        {discoveryServerAddress = newValue, ..}
instance Property "DiscoveryServerPort" NdiDiscoveryServerConfigProperty where
  type PropertyType "DiscoveryServerPort" NdiDiscoveryServerConfigProperty = Value Prelude.Integer
  set newValue NdiDiscoveryServerConfigProperty {..}
    = NdiDiscoveryServerConfigProperty
        {discoveryServerPort = Prelude.pure newValue, ..}
instance Property "VpcInterfaceAdapter" NdiDiscoveryServerConfigProperty where
  type PropertyType "VpcInterfaceAdapter" NdiDiscoveryServerConfigProperty = Value Prelude.Text
  set newValue NdiDiscoveryServerConfigProperty {..}
    = NdiDiscoveryServerConfigProperty
        {vpcInterfaceAdapter = newValue, ..}