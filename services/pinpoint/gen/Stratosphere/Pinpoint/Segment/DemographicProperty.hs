module Stratosphere.Pinpoint.Segment.DemographicProperty (
        module Exports, DemographicProperty(..), mkDemographicProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.Segment.SetDimensionProperty as Exports
import Stratosphere.ResourceProperties
data DemographicProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html>
    DemographicProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-appversion>
                         appVersion :: (Prelude.Maybe SetDimensionProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-channel>
                         channel :: (Prelude.Maybe SetDimensionProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-devicetype>
                         deviceType :: (Prelude.Maybe SetDimensionProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-make>
                         make :: (Prelude.Maybe SetDimensionProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-model>
                         model :: (Prelude.Maybe SetDimensionProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-segment-segmentdimensions-demographic.html#cfn-pinpoint-segment-segmentdimensions-demographic-platform>
                         platform :: (Prelude.Maybe SetDimensionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDemographicProperty :: DemographicProperty
mkDemographicProperty
  = DemographicProperty
      {haddock_workaround_ = (), appVersion = Prelude.Nothing,
       channel = Prelude.Nothing, deviceType = Prelude.Nothing,
       make = Prelude.Nothing, model = Prelude.Nothing,
       platform = Prelude.Nothing}
instance ToResourceProperties DemographicProperty where
  toResourceProperties DemographicProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Segment.Demographic",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AppVersion" Prelude.<$> appVersion,
                            (JSON..=) "Channel" Prelude.<$> channel,
                            (JSON..=) "DeviceType" Prelude.<$> deviceType,
                            (JSON..=) "Make" Prelude.<$> make,
                            (JSON..=) "Model" Prelude.<$> model,
                            (JSON..=) "Platform" Prelude.<$> platform])}
instance JSON.ToJSON DemographicProperty where
  toJSON DemographicProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AppVersion" Prelude.<$> appVersion,
               (JSON..=) "Channel" Prelude.<$> channel,
               (JSON..=) "DeviceType" Prelude.<$> deviceType,
               (JSON..=) "Make" Prelude.<$> make,
               (JSON..=) "Model" Prelude.<$> model,
               (JSON..=) "Platform" Prelude.<$> platform]))
instance Property "AppVersion" DemographicProperty where
  type PropertyType "AppVersion" DemographicProperty = SetDimensionProperty
  set newValue DemographicProperty {..}
    = DemographicProperty {appVersion = Prelude.pure newValue, ..}
instance Property "Channel" DemographicProperty where
  type PropertyType "Channel" DemographicProperty = SetDimensionProperty
  set newValue DemographicProperty {..}
    = DemographicProperty {channel = Prelude.pure newValue, ..}
instance Property "DeviceType" DemographicProperty where
  type PropertyType "DeviceType" DemographicProperty = SetDimensionProperty
  set newValue DemographicProperty {..}
    = DemographicProperty {deviceType = Prelude.pure newValue, ..}
instance Property "Make" DemographicProperty where
  type PropertyType "Make" DemographicProperty = SetDimensionProperty
  set newValue DemographicProperty {..}
    = DemographicProperty {make = Prelude.pure newValue, ..}
instance Property "Model" DemographicProperty where
  type PropertyType "Model" DemographicProperty = SetDimensionProperty
  set newValue DemographicProperty {..}
    = DemographicProperty {model = Prelude.pure newValue, ..}
instance Property "Platform" DemographicProperty where
  type PropertyType "Platform" DemographicProperty = SetDimensionProperty
  set newValue DemographicProperty {..}
    = DemographicProperty {platform = Prelude.pure newValue, ..}