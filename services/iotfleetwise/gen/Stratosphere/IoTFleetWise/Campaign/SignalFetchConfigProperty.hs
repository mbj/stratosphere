module Stratosphere.IoTFleetWise.Campaign.SignalFetchConfigProperty (
        module Exports, SignalFetchConfigProperty(..),
        mkSignalFetchConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTFleetWise.Campaign.ConditionBasedSignalFetchConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTFleetWise.Campaign.TimeBasedSignalFetchConfigProperty as Exports
import Stratosphere.ResourceProperties
data SignalFetchConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-signalfetchconfig.html>
    SignalFetchConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-signalfetchconfig.html#cfn-iotfleetwise-campaign-signalfetchconfig-conditionbased>
                               conditionBased :: (Prelude.Maybe ConditionBasedSignalFetchConfigProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-signalfetchconfig.html#cfn-iotfleetwise-campaign-signalfetchconfig-timebased>
                               timeBased :: (Prelude.Maybe TimeBasedSignalFetchConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSignalFetchConfigProperty :: SignalFetchConfigProperty
mkSignalFetchConfigProperty
  = SignalFetchConfigProperty
      {haddock_workaround_ = (), conditionBased = Prelude.Nothing,
       timeBased = Prelude.Nothing}
instance ToResourceProperties SignalFetchConfigProperty where
  toResourceProperties SignalFetchConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Campaign.SignalFetchConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConditionBased" Prelude.<$> conditionBased,
                            (JSON..=) "TimeBased" Prelude.<$> timeBased])}
instance JSON.ToJSON SignalFetchConfigProperty where
  toJSON SignalFetchConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConditionBased" Prelude.<$> conditionBased,
               (JSON..=) "TimeBased" Prelude.<$> timeBased]))
instance Property "ConditionBased" SignalFetchConfigProperty where
  type PropertyType "ConditionBased" SignalFetchConfigProperty = ConditionBasedSignalFetchConfigProperty
  set newValue SignalFetchConfigProperty {..}
    = SignalFetchConfigProperty
        {conditionBased = Prelude.pure newValue, ..}
instance Property "TimeBased" SignalFetchConfigProperty where
  type PropertyType "TimeBased" SignalFetchConfigProperty = TimeBasedSignalFetchConfigProperty
  set newValue SignalFetchConfigProperty {..}
    = SignalFetchConfigProperty {timeBased = Prelude.pure newValue, ..}