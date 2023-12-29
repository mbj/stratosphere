module Stratosphere.QuickSight.Topic.ComparativeOrderProperty (
        ComparativeOrderProperty(..), mkComparativeOrderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComparativeOrderProperty
  = ComparativeOrderProperty {specifedOrder :: (Prelude.Maybe (ValueList Prelude.Text)),
                              treatUndefinedSpecifiedValues :: (Prelude.Maybe (Value Prelude.Text)),
                              useOrdering :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComparativeOrderProperty :: ComparativeOrderProperty
mkComparativeOrderProperty
  = ComparativeOrderProperty
      {specifedOrder = Prelude.Nothing,
       treatUndefinedSpecifiedValues = Prelude.Nothing,
       useOrdering = Prelude.Nothing}
instance ToResourceProperties ComparativeOrderProperty where
  toResourceProperties ComparativeOrderProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.ComparativeOrder",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SpecifedOrder" Prelude.<$> specifedOrder,
                            (JSON..=) "TreatUndefinedSpecifiedValues"
                              Prelude.<$> treatUndefinedSpecifiedValues,
                            (JSON..=) "UseOrdering" Prelude.<$> useOrdering])}
instance JSON.ToJSON ComparativeOrderProperty where
  toJSON ComparativeOrderProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SpecifedOrder" Prelude.<$> specifedOrder,
               (JSON..=) "TreatUndefinedSpecifiedValues"
                 Prelude.<$> treatUndefinedSpecifiedValues,
               (JSON..=) "UseOrdering" Prelude.<$> useOrdering]))
instance Property "SpecifedOrder" ComparativeOrderProperty where
  type PropertyType "SpecifedOrder" ComparativeOrderProperty = ValueList Prelude.Text
  set newValue ComparativeOrderProperty {..}
    = ComparativeOrderProperty
        {specifedOrder = Prelude.pure newValue, ..}
instance Property "TreatUndefinedSpecifiedValues" ComparativeOrderProperty where
  type PropertyType "TreatUndefinedSpecifiedValues" ComparativeOrderProperty = Value Prelude.Text
  set newValue ComparativeOrderProperty {..}
    = ComparativeOrderProperty
        {treatUndefinedSpecifiedValues = Prelude.pure newValue, ..}
instance Property "UseOrdering" ComparativeOrderProperty where
  type PropertyType "UseOrdering" ComparativeOrderProperty = Value Prelude.Text
  set newValue ComparativeOrderProperty {..}
    = ComparativeOrderProperty
        {useOrdering = Prelude.pure newValue, ..}