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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysispacketheader.html>
    AnalysisPacketHeaderProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysispacketheader.html#cfn-ec2-networkinsightsanalysis-analysispacketheader-destinationaddresses>
                                  destinationAddresses :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysispacketheader.html#cfn-ec2-networkinsightsanalysis-analysispacketheader-destinationportranges>
                                  destinationPortRanges :: (Prelude.Maybe [PortRangeProperty]),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysispacketheader.html#cfn-ec2-networkinsightsanalysis-analysispacketheader-protocol>
                                  protocol :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysispacketheader.html#cfn-ec2-networkinsightsanalysis-analysispacketheader-sourceaddresses>
                                  sourceAddresses :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-analysispacketheader.html#cfn-ec2-networkinsightsanalysis-analysispacketheader-sourceportranges>
                                  sourcePortRanges :: (Prelude.Maybe [PortRangeProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnalysisPacketHeaderProperty :: AnalysisPacketHeaderProperty
mkAnalysisPacketHeaderProperty
  = AnalysisPacketHeaderProperty
      {haddock_workaround_ = (), destinationAddresses = Prelude.Nothing,
       destinationPortRanges = Prelude.Nothing,
       protocol = Prelude.Nothing, sourceAddresses = Prelude.Nothing,
       sourcePortRanges = Prelude.Nothing}
instance ToResourceProperties AnalysisPacketHeaderProperty where
  toResourceProperties AnalysisPacketHeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAnalysis.AnalysisPacketHeader",
         supportsTags = Prelude.False,
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
  type PropertyType "DestinationAddresses" AnalysisPacketHeaderProperty = ValueList Prelude.Text
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
  type PropertyType "SourceAddresses" AnalysisPacketHeaderProperty = ValueList Prelude.Text
  set newValue AnalysisPacketHeaderProperty {..}
    = AnalysisPacketHeaderProperty
        {sourceAddresses = Prelude.pure newValue, ..}
instance Property "SourcePortRanges" AnalysisPacketHeaderProperty where
  type PropertyType "SourcePortRanges" AnalysisPacketHeaderProperty = [PortRangeProperty]
  set newValue AnalysisPacketHeaderProperty {..}
    = AnalysisPacketHeaderProperty
        {sourcePortRanges = Prelude.pure newValue, ..}