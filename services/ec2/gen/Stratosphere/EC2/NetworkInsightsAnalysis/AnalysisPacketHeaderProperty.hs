module Stratosphere.EC2.NetworkInsightsAnalysis.AnalysisPacketHeaderProperty (
        module Exports, AnalysisPacketHeaderProperty(..),
        mkAnalysisPacketHeaderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsAnalysis.PortRangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnalysisPacketHeaderProperty
  = AnalysisPacketHeaderProperty {destinationAddresses :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                  destinationPortRanges :: (Prelude.Maybe [PortRangeProperty]),
                                  protocol :: (Prelude.Maybe (Value Prelude.Text)),
                                  sourceAddresses :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                  sourcePortRanges :: (Prelude.Maybe [PortRangeProperty])}
mkAnalysisPacketHeaderProperty :: AnalysisPacketHeaderProperty
mkAnalysisPacketHeaderProperty
  = AnalysisPacketHeaderProperty
      {destinationAddresses = Prelude.Nothing,
       destinationPortRanges = Prelude.Nothing,
       protocol = Prelude.Nothing, sourceAddresses = Prelude.Nothing,
       sourcePortRanges = Prelude.Nothing}
instance ToResourceProperties AnalysisPacketHeaderProperty where
  toResourceProperties AnalysisPacketHeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAnalysis.AnalysisPacketHeader",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DestinationAddresses" Prelude.<$> destinationAddresses,
                            (JSON..=) "DestinationPortRanges"
                              Prelude.<$> destinationPortRanges,
                            (JSON..=) "Protocol" Prelude.<$> protocol,
                            (JSON..=) "SourceAddresses" Prelude.<$> sourceAddresses,
                            (JSON..=) "SourcePortRanges" Prelude.<$> sourcePortRanges])}
instance JSON.ToJSON AnalysisPacketHeaderProperty where
  toJSON AnalysisPacketHeaderProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DestinationAddresses" Prelude.<$> destinationAddresses,
               (JSON..=) "DestinationPortRanges"
                 Prelude.<$> destinationPortRanges,
               (JSON..=) "Protocol" Prelude.<$> protocol,
               (JSON..=) "SourceAddresses" Prelude.<$> sourceAddresses,
               (JSON..=) "SourcePortRanges" Prelude.<$> sourcePortRanges]))
instance Property "DestinationAddresses" AnalysisPacketHeaderProperty where
  type PropertyType "DestinationAddresses" AnalysisPacketHeaderProperty = ValueList (Value Prelude.Text)
  set newValue AnalysisPacketHeaderProperty {..}
    = AnalysisPacketHeaderProperty
        {destinationAddresses = Prelude.pure newValue, ..}
instance Property "DestinationPortRanges" AnalysisPacketHeaderProperty where
  type PropertyType "DestinationPortRanges" AnalysisPacketHeaderProperty = [PortRangeProperty]
  set newValue AnalysisPacketHeaderProperty {..}
    = AnalysisPacketHeaderProperty
        {destinationPortRanges = Prelude.pure newValue, ..}
instance Property "Protocol" AnalysisPacketHeaderProperty where
  type PropertyType "Protocol" AnalysisPacketHeaderProperty = Value Prelude.Text
  set newValue AnalysisPacketHeaderProperty {..}
    = AnalysisPacketHeaderProperty
        {protocol = Prelude.pure newValue, ..}
instance Property "SourceAddresses" AnalysisPacketHeaderProperty where
  type PropertyType "SourceAddresses" AnalysisPacketHeaderProperty = ValueList (Value Prelude.Text)
  set newValue AnalysisPacketHeaderProperty {..}
    = AnalysisPacketHeaderProperty
        {sourceAddresses = Prelude.pure newValue, ..}
instance Property "SourcePortRanges" AnalysisPacketHeaderProperty where
  type PropertyType "SourcePortRanges" AnalysisPacketHeaderProperty = [PortRangeProperty]
  set newValue AnalysisPacketHeaderProperty {..}
    = AnalysisPacketHeaderProperty
        {sourcePortRanges = Prelude.pure newValue, ..}