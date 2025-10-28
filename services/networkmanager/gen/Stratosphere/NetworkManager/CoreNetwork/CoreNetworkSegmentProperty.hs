module Stratosphere.NetworkManager.CoreNetwork.CoreNetworkSegmentProperty (
        CoreNetworkSegmentProperty(..), mkCoreNetworkSegmentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CoreNetworkSegmentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-corenetwork-corenetworksegment.html>
    CoreNetworkSegmentProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-corenetwork-corenetworksegment.html#cfn-networkmanager-corenetwork-corenetworksegment-edgelocations>
                                edgeLocations :: (Prelude.Maybe (ValueList Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-corenetwork-corenetworksegment.html#cfn-networkmanager-corenetwork-corenetworksegment-name>
                                name :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-corenetwork-corenetworksegment.html#cfn-networkmanager-corenetwork-corenetworksegment-sharedsegments>
                                sharedSegments :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCoreNetworkSegmentProperty :: CoreNetworkSegmentProperty
mkCoreNetworkSegmentProperty
  = CoreNetworkSegmentProperty
      {haddock_workaround_ = (), edgeLocations = Prelude.Nothing,
       name = Prelude.Nothing, sharedSegments = Prelude.Nothing}
instance ToResourceProperties CoreNetworkSegmentProperty where
  toResourceProperties CoreNetworkSegmentProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::CoreNetwork.CoreNetworkSegment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EdgeLocations" Prelude.<$> edgeLocations,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "SharedSegments" Prelude.<$> sharedSegments])}
instance JSON.ToJSON CoreNetworkSegmentProperty where
  toJSON CoreNetworkSegmentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EdgeLocations" Prelude.<$> edgeLocations,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "SharedSegments" Prelude.<$> sharedSegments]))
instance Property "EdgeLocations" CoreNetworkSegmentProperty where
  type PropertyType "EdgeLocations" CoreNetworkSegmentProperty = ValueList Prelude.Text
  set newValue CoreNetworkSegmentProperty {..}
    = CoreNetworkSegmentProperty
        {edgeLocations = Prelude.pure newValue, ..}
instance Property "Name" CoreNetworkSegmentProperty where
  type PropertyType "Name" CoreNetworkSegmentProperty = Value Prelude.Text
  set newValue CoreNetworkSegmentProperty {..}
    = CoreNetworkSegmentProperty {name = Prelude.pure newValue, ..}
instance Property "SharedSegments" CoreNetworkSegmentProperty where
  type PropertyType "SharedSegments" CoreNetworkSegmentProperty = ValueList Prelude.Text
  set newValue CoreNetworkSegmentProperty {..}
    = CoreNetworkSegmentProperty
        {sharedSegments = Prelude.pure newValue, ..}