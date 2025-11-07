module Stratosphere.APS.AnomalyDetector.MissingDataActionProperty (
        MissingDataActionProperty(..), mkMissingDataActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MissingDataActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-anomalydetector-missingdataaction.html>
    MissingDataActionProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-anomalydetector-missingdataaction.html#cfn-aps-anomalydetector-missingdataaction-markasanomaly>
                               markAsAnomaly :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-anomalydetector-missingdataaction.html#cfn-aps-anomalydetector-missingdataaction-skip>
                               skip :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMissingDataActionProperty :: MissingDataActionProperty
mkMissingDataActionProperty
  = MissingDataActionProperty
      {haddock_workaround_ = (), markAsAnomaly = Prelude.Nothing,
       skip = Prelude.Nothing}
instance ToResourceProperties MissingDataActionProperty where
  toResourceProperties MissingDataActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::AnomalyDetector.MissingDataAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MarkAsAnomaly" Prelude.<$> markAsAnomaly,
                            (JSON..=) "Skip" Prelude.<$> skip])}
instance JSON.ToJSON MissingDataActionProperty where
  toJSON MissingDataActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MarkAsAnomaly" Prelude.<$> markAsAnomaly,
               (JSON..=) "Skip" Prelude.<$> skip]))
instance Property "MarkAsAnomaly" MissingDataActionProperty where
  type PropertyType "MarkAsAnomaly" MissingDataActionProperty = Value Prelude.Bool
  set newValue MissingDataActionProperty {..}
    = MissingDataActionProperty
        {markAsAnomaly = Prelude.pure newValue, ..}
instance Property "Skip" MissingDataActionProperty where
  type PropertyType "Skip" MissingDataActionProperty = Value Prelude.Bool
  set newValue MissingDataActionProperty {..}
    = MissingDataActionProperty {skip = Prelude.pure newValue, ..}