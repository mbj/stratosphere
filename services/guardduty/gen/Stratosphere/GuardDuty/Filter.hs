module Stratosphere.GuardDuty.Filter (
        module Exports, Filter(..), mkFilter
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GuardDuty.Filter.FindingCriteriaProperty as Exports
import {-# SOURCE #-} Stratosphere.GuardDuty.Filter.TagItemProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Filter
  = Filter {action :: (Prelude.Maybe (Value Prelude.Text)),
            description :: (Prelude.Maybe (Value Prelude.Text)),
            detectorId :: (Value Prelude.Text),
            findingCriteria :: FindingCriteriaProperty,
            name :: (Value Prelude.Text),
            rank :: (Prelude.Maybe (Value Prelude.Integer)),
            tags :: (Prelude.Maybe [TagItemProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilter ::
  Value Prelude.Text
  -> FindingCriteriaProperty -> Value Prelude.Text -> Filter
mkFilter detectorId findingCriteria name
  = Filter
      {detectorId = detectorId, findingCriteria = findingCriteria,
       name = name, action = Prelude.Nothing,
       description = Prelude.Nothing, rank = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Filter where
  toResourceProperties Filter {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::Filter", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DetectorId" JSON..= detectorId,
                            "FindingCriteria" JSON..= findingCriteria, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Action" Prelude.<$> action,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Rank" Prelude.<$> rank,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Filter where
  toJSON Filter {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DetectorId" JSON..= detectorId,
               "FindingCriteria" JSON..= findingCriteria, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Action" Prelude.<$> action,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Rank" Prelude.<$> rank,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Action" Filter where
  type PropertyType "Action" Filter = Value Prelude.Text
  set newValue Filter {..}
    = Filter {action = Prelude.pure newValue, ..}
instance Property "Description" Filter where
  type PropertyType "Description" Filter = Value Prelude.Text
  set newValue Filter {..}
    = Filter {description = Prelude.pure newValue, ..}
instance Property "DetectorId" Filter where
  type PropertyType "DetectorId" Filter = Value Prelude.Text
  set newValue Filter {..} = Filter {detectorId = newValue, ..}
instance Property "FindingCriteria" Filter where
  type PropertyType "FindingCriteria" Filter = FindingCriteriaProperty
  set newValue Filter {..} = Filter {findingCriteria = newValue, ..}
instance Property "Name" Filter where
  type PropertyType "Name" Filter = Value Prelude.Text
  set newValue Filter {..} = Filter {name = newValue, ..}
instance Property "Rank" Filter where
  type PropertyType "Rank" Filter = Value Prelude.Integer
  set newValue Filter {..}
    = Filter {rank = Prelude.pure newValue, ..}
instance Property "Tags" Filter where
  type PropertyType "Tags" Filter = [TagItemProperty]
  set newValue Filter {..}
    = Filter {tags = Prelude.pure newValue, ..}