module Stratosphere.APS.AnomalyDetector.IgnoreNearExpectedProperty (
        IgnoreNearExpectedProperty(..), mkIgnoreNearExpectedProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IgnoreNearExpectedProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-anomalydetector-ignorenearexpected.html>
    IgnoreNearExpectedProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-anomalydetector-ignorenearexpected.html#cfn-aps-anomalydetector-ignorenearexpected-amount>
                                amount :: (Prelude.Maybe (Value Prelude.Double)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-anomalydetector-ignorenearexpected.html#cfn-aps-anomalydetector-ignorenearexpected-ratio>
                                ratio :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIgnoreNearExpectedProperty :: IgnoreNearExpectedProperty
mkIgnoreNearExpectedProperty
  = IgnoreNearExpectedProperty
      {haddock_workaround_ = (), amount = Prelude.Nothing,
       ratio = Prelude.Nothing}
instance ToResourceProperties IgnoreNearExpectedProperty where
  toResourceProperties IgnoreNearExpectedProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::AnomalyDetector.IgnoreNearExpected",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Amount" Prelude.<$> amount,
                            (JSON..=) "Ratio" Prelude.<$> ratio])}
instance JSON.ToJSON IgnoreNearExpectedProperty where
  toJSON IgnoreNearExpectedProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Amount" Prelude.<$> amount,
               (JSON..=) "Ratio" Prelude.<$> ratio]))
instance Property "Amount" IgnoreNearExpectedProperty where
  type PropertyType "Amount" IgnoreNearExpectedProperty = Value Prelude.Double
  set newValue IgnoreNearExpectedProperty {..}
    = IgnoreNearExpectedProperty {amount = Prelude.pure newValue, ..}
instance Property "Ratio" IgnoreNearExpectedProperty where
  type PropertyType "Ratio" IgnoreNearExpectedProperty = Value Prelude.Double
  set newValue IgnoreNearExpectedProperty {..}
    = IgnoreNearExpectedProperty {ratio = Prelude.pure newValue, ..}