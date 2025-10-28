module Stratosphere.IoTFleetWise.Campaign.SignalInformationProperty (
        SignalInformationProperty(..), mkSignalInformationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SignalInformationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-signalinformation.html>
    SignalInformationProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-signalinformation.html#cfn-iotfleetwise-campaign-signalinformation-datapartitionid>
                               dataPartitionId :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-signalinformation.html#cfn-iotfleetwise-campaign-signalinformation-maxsamplecount>
                               maxSampleCount :: (Prelude.Maybe (Value Prelude.Double)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-signalinformation.html#cfn-iotfleetwise-campaign-signalinformation-minimumsamplingintervalms>
                               minimumSamplingIntervalMs :: (Prelude.Maybe (Value Prelude.Double)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-signalinformation.html#cfn-iotfleetwise-campaign-signalinformation-name>
                               name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSignalInformationProperty ::
  Value Prelude.Text -> SignalInformationProperty
mkSignalInformationProperty name
  = SignalInformationProperty
      {haddock_workaround_ = (), name = name,
       dataPartitionId = Prelude.Nothing,
       maxSampleCount = Prelude.Nothing,
       minimumSamplingIntervalMs = Prelude.Nothing}
instance ToResourceProperties SignalInformationProperty where
  toResourceProperties SignalInformationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Campaign.SignalInformation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "DataPartitionId" Prelude.<$> dataPartitionId,
                               (JSON..=) "MaxSampleCount" Prelude.<$> maxSampleCount,
                               (JSON..=) "MinimumSamplingIntervalMs"
                                 Prelude.<$> minimumSamplingIntervalMs]))}
instance JSON.ToJSON SignalInformationProperty where
  toJSON SignalInformationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "DataPartitionId" Prelude.<$> dataPartitionId,
                  (JSON..=) "MaxSampleCount" Prelude.<$> maxSampleCount,
                  (JSON..=) "MinimumSamplingIntervalMs"
                    Prelude.<$> minimumSamplingIntervalMs])))
instance Property "DataPartitionId" SignalInformationProperty where
  type PropertyType "DataPartitionId" SignalInformationProperty = Value Prelude.Text
  set newValue SignalInformationProperty {..}
    = SignalInformationProperty
        {dataPartitionId = Prelude.pure newValue, ..}
instance Property "MaxSampleCount" SignalInformationProperty where
  type PropertyType "MaxSampleCount" SignalInformationProperty = Value Prelude.Double
  set newValue SignalInformationProperty {..}
    = SignalInformationProperty
        {maxSampleCount = Prelude.pure newValue, ..}
instance Property "MinimumSamplingIntervalMs" SignalInformationProperty where
  type PropertyType "MinimumSamplingIntervalMs" SignalInformationProperty = Value Prelude.Double
  set newValue SignalInformationProperty {..}
    = SignalInformationProperty
        {minimumSamplingIntervalMs = Prelude.pure newValue, ..}
instance Property "Name" SignalInformationProperty where
  type PropertyType "Name" SignalInformationProperty = Value Prelude.Text
  set newValue SignalInformationProperty {..}
    = SignalInformationProperty {name = newValue, ..}