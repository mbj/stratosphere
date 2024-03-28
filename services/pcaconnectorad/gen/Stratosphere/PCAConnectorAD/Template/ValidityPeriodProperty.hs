module Stratosphere.PCAConnectorAD.Template.ValidityPeriodProperty (
        ValidityPeriodProperty(..), mkValidityPeriodProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ValidityPeriodProperty
  = ValidityPeriodProperty {period :: (Value Prelude.Double),
                            periodType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkValidityPeriodProperty ::
  Value Prelude.Double
  -> Value Prelude.Text -> ValidityPeriodProperty
mkValidityPeriodProperty period periodType
  = ValidityPeriodProperty {period = period, periodType = periodType}
instance ToResourceProperties ValidityPeriodProperty where
  toResourceProperties ValidityPeriodProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.ValidityPeriod",
         supportsTags = Prelude.False,
         properties = ["Period" JSON..= period,
                       "PeriodType" JSON..= periodType]}
instance JSON.ToJSON ValidityPeriodProperty where
  toJSON ValidityPeriodProperty {..}
    = JSON.object
        ["Period" JSON..= period, "PeriodType" JSON..= periodType]
instance Property "Period" ValidityPeriodProperty where
  type PropertyType "Period" ValidityPeriodProperty = Value Prelude.Double
  set newValue ValidityPeriodProperty {..}
    = ValidityPeriodProperty {period = newValue, ..}
instance Property "PeriodType" ValidityPeriodProperty where
  type PropertyType "PeriodType" ValidityPeriodProperty = Value Prelude.Text
  set newValue ValidityPeriodProperty {..}
    = ValidityPeriodProperty {periodType = newValue, ..}