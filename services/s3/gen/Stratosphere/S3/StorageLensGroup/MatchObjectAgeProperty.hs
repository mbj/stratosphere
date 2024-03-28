module Stratosphere.S3.StorageLensGroup.MatchObjectAgeProperty (
        MatchObjectAgeProperty(..), mkMatchObjectAgeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MatchObjectAgeProperty
  = MatchObjectAgeProperty {daysGreaterThan :: (Prelude.Maybe (Value Prelude.Integer)),
                            daysLessThan :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMatchObjectAgeProperty :: MatchObjectAgeProperty
mkMatchObjectAgeProperty
  = MatchObjectAgeProperty
      {daysGreaterThan = Prelude.Nothing, daysLessThan = Prelude.Nothing}
instance ToResourceProperties MatchObjectAgeProperty where
  toResourceProperties MatchObjectAgeProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLensGroup.MatchObjectAge",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DaysGreaterThan" Prelude.<$> daysGreaterThan,
                            (JSON..=) "DaysLessThan" Prelude.<$> daysLessThan])}
instance JSON.ToJSON MatchObjectAgeProperty where
  toJSON MatchObjectAgeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DaysGreaterThan" Prelude.<$> daysGreaterThan,
               (JSON..=) "DaysLessThan" Prelude.<$> daysLessThan]))
instance Property "DaysGreaterThan" MatchObjectAgeProperty where
  type PropertyType "DaysGreaterThan" MatchObjectAgeProperty = Value Prelude.Integer
  set newValue MatchObjectAgeProperty {..}
    = MatchObjectAgeProperty
        {daysGreaterThan = Prelude.pure newValue, ..}
instance Property "DaysLessThan" MatchObjectAgeProperty where
  type PropertyType "DaysLessThan" MatchObjectAgeProperty = Value Prelude.Integer
  set newValue MatchObjectAgeProperty {..}
    = MatchObjectAgeProperty {daysLessThan = Prelude.pure newValue, ..}