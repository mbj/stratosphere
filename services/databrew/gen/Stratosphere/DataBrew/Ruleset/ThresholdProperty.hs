module Stratosphere.DataBrew.Ruleset.ThresholdProperty (
        ThresholdProperty(..), mkThresholdProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ThresholdProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-ruleset-threshold.html>
    ThresholdProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-ruleset-threshold.html#cfn-databrew-ruleset-threshold-type>
                       type' :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-ruleset-threshold.html#cfn-databrew-ruleset-threshold-unit>
                       unit :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-ruleset-threshold.html#cfn-databrew-ruleset-threshold-value>
                       value :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThresholdProperty :: Value Prelude.Double -> ThresholdProperty
mkThresholdProperty value
  = ThresholdProperty
      {haddock_workaround_ = (), value = value, type' = Prelude.Nothing,
       unit = Prelude.Nothing}
instance ToResourceProperties ThresholdProperty where
  toResourceProperties ThresholdProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Ruleset.Threshold",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Value" JSON..= value]
                           (Prelude.catMaybes
                              [(JSON..=) "Type" Prelude.<$> type',
                               (JSON..=) "Unit" Prelude.<$> unit]))}
instance JSON.ToJSON ThresholdProperty where
  toJSON ThresholdProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Value" JSON..= value]
              (Prelude.catMaybes
                 [(JSON..=) "Type" Prelude.<$> type',
                  (JSON..=) "Unit" Prelude.<$> unit])))
instance Property "Type" ThresholdProperty where
  type PropertyType "Type" ThresholdProperty = Value Prelude.Text
  set newValue ThresholdProperty {..}
    = ThresholdProperty {type' = Prelude.pure newValue, ..}
instance Property "Unit" ThresholdProperty where
  type PropertyType "Unit" ThresholdProperty = Value Prelude.Text
  set newValue ThresholdProperty {..}
    = ThresholdProperty {unit = Prelude.pure newValue, ..}
instance Property "Value" ThresholdProperty where
  type PropertyType "Value" ThresholdProperty = Value Prelude.Double
  set newValue ThresholdProperty {..}
    = ThresholdProperty {value = newValue, ..}