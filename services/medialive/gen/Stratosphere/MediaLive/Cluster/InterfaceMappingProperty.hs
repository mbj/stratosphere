module Stratosphere.MediaLive.Cluster.InterfaceMappingProperty (
        InterfaceMappingProperty(..), mkInterfaceMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InterfaceMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-cluster-interfacemapping.html>
    InterfaceMappingProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-cluster-interfacemapping.html#cfn-medialive-cluster-interfacemapping-logicalinterfacename>
                              logicalInterfaceName :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-cluster-interfacemapping.html#cfn-medialive-cluster-interfacemapping-networkid>
                              networkId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInterfaceMappingProperty :: InterfaceMappingProperty
mkInterfaceMappingProperty
  = InterfaceMappingProperty
      {haddock_workaround_ = (), logicalInterfaceName = Prelude.Nothing,
       networkId = Prelude.Nothing}
instance ToResourceProperties InterfaceMappingProperty where
  toResourceProperties InterfaceMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Cluster.InterfaceMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LogicalInterfaceName" Prelude.<$> logicalInterfaceName,
                            (JSON..=) "NetworkId" Prelude.<$> networkId])}
instance JSON.ToJSON InterfaceMappingProperty where
  toJSON InterfaceMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LogicalInterfaceName" Prelude.<$> logicalInterfaceName,
               (JSON..=) "NetworkId" Prelude.<$> networkId]))
instance Property "LogicalInterfaceName" InterfaceMappingProperty where
  type PropertyType "LogicalInterfaceName" InterfaceMappingProperty = Value Prelude.Text
  set newValue InterfaceMappingProperty {..}
    = InterfaceMappingProperty
        {logicalInterfaceName = Prelude.pure newValue, ..}
instance Property "NetworkId" InterfaceMappingProperty where
  type PropertyType "NetworkId" InterfaceMappingProperty = Value Prelude.Text
  set newValue InterfaceMappingProperty {..}
    = InterfaceMappingProperty {networkId = Prelude.pure newValue, ..}