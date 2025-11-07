module Stratosphere.CustomerProfiles.EventTrigger.PeriodProperty (
        PeriodProperty(..), mkPeriodProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PeriodProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-eventtrigger-period.html>
    PeriodProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-eventtrigger-period.html#cfn-customerprofiles-eventtrigger-period-maxinvocationsperprofile>
                    maxInvocationsPerProfile :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-eventtrigger-period.html#cfn-customerprofiles-eventtrigger-period-unit>
                    unit :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-eventtrigger-period.html#cfn-customerprofiles-eventtrigger-period-unlimited>
                    unlimited :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-eventtrigger-period.html#cfn-customerprofiles-eventtrigger-period-value>
                    value :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPeriodProperty ::
  Value Prelude.Text -> Value Prelude.Integer -> PeriodProperty
mkPeriodProperty unit value
  = PeriodProperty
      {haddock_workaround_ = (), unit = unit, value = value,
       maxInvocationsPerProfile = Prelude.Nothing,
       unlimited = Prelude.Nothing}
instance ToResourceProperties PeriodProperty where
  toResourceProperties PeriodProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::EventTrigger.Period",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Unit" JSON..= unit, "Value" JSON..= value]
                           (Prelude.catMaybes
                              [(JSON..=) "MaxInvocationsPerProfile"
                                 Prelude.<$> maxInvocationsPerProfile,
                               (JSON..=) "Unlimited" Prelude.<$> unlimited]))}
instance JSON.ToJSON PeriodProperty where
  toJSON PeriodProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Unit" JSON..= unit, "Value" JSON..= value]
              (Prelude.catMaybes
                 [(JSON..=) "MaxInvocationsPerProfile"
                    Prelude.<$> maxInvocationsPerProfile,
                  (JSON..=) "Unlimited" Prelude.<$> unlimited])))
instance Property "MaxInvocationsPerProfile" PeriodProperty where
  type PropertyType "MaxInvocationsPerProfile" PeriodProperty = Value Prelude.Integer
  set newValue PeriodProperty {..}
    = PeriodProperty
        {maxInvocationsPerProfile = Prelude.pure newValue, ..}
instance Property "Unit" PeriodProperty where
  type PropertyType "Unit" PeriodProperty = Value Prelude.Text
  set newValue PeriodProperty {..}
    = PeriodProperty {unit = newValue, ..}
instance Property "Unlimited" PeriodProperty where
  type PropertyType "Unlimited" PeriodProperty = Value Prelude.Bool
  set newValue PeriodProperty {..}
    = PeriodProperty {unlimited = Prelude.pure newValue, ..}
instance Property "Value" PeriodProperty where
  type PropertyType "Value" PeriodProperty = Value Prelude.Integer
  set newValue PeriodProperty {..}
    = PeriodProperty {value = newValue, ..}