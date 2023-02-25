module Stratosphere.GuardDuty.Filter (
        module Exports, Filter(..), mkFilter
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GuardDuty.Filter.FindingCriteriaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Filter
  = Filter {action :: (Value Prelude.Text),
            description :: (Value Prelude.Text),
            detectorId :: (Value Prelude.Text),
            findingCriteria :: FindingCriteriaProperty,
            name :: (Value Prelude.Text),
            rank :: (Value Prelude.Integer),
            tags :: (Prelude.Maybe [Tag])}
mkFilter ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> FindingCriteriaProperty
           -> Value Prelude.Text -> Value Prelude.Integer -> Filter
mkFilter action description detectorId findingCriteria name rank
  = Filter
      {action = action, description = description,
       detectorId = detectorId, findingCriteria = findingCriteria,
       name = name, rank = rank, tags = Prelude.Nothing}
instance ToResourceProperties Filter where
  toResourceProperties Filter {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::Filter",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action, "Description" JSON..= description,
                            "DetectorId" JSON..= detectorId,
                            "FindingCriteria" JSON..= findingCriteria, "Name" JSON..= name,
                            "Rank" JSON..= rank]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Filter where
  toJSON Filter {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action, "Description" JSON..= description,
               "DetectorId" JSON..= detectorId,
               "FindingCriteria" JSON..= findingCriteria, "Name" JSON..= name,
               "Rank" JSON..= rank]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Action" Filter where
  type PropertyType "Action" Filter = Value Prelude.Text
  set newValue Filter {..} = Filter {action = newValue, ..}
instance Property "Description" Filter where
  type PropertyType "Description" Filter = Value Prelude.Text
  set newValue Filter {..} = Filter {description = newValue, ..}
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
  set newValue Filter {..} = Filter {rank = newValue, ..}
instance Property "Tags" Filter where
  type PropertyType "Tags" Filter = [Tag]
  set newValue Filter {..}
    = Filter {tags = Prelude.pure newValue, ..}