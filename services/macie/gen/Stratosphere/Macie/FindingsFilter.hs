module Stratosphere.Macie.FindingsFilter (
        module Exports, FindingsFilter(..), mkFindingsFilter
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Macie.FindingsFilter.FindingCriteriaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FindingsFilter
  = FindingsFilter {action :: (Prelude.Maybe (Value Prelude.Text)),
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    findingCriteria :: FindingCriteriaProperty,
                    name :: (Value Prelude.Text),
                    position :: (Prelude.Maybe (Value Prelude.Integer))}
mkFindingsFilter ::
  FindingCriteriaProperty -> Value Prelude.Text -> FindingsFilter
mkFindingsFilter findingCriteria name
  = FindingsFilter
      {findingCriteria = findingCriteria, name = name,
       action = Prelude.Nothing, description = Prelude.Nothing,
       position = Prelude.Nothing}
instance ToResourceProperties FindingsFilter where
  toResourceProperties FindingsFilter {..}
    = ResourceProperties
        {awsType = "AWS::Macie::FindingsFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FindingCriteria" JSON..= findingCriteria, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Action" Prelude.<$> action,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Position" Prelude.<$> position]))}
instance JSON.ToJSON FindingsFilter where
  toJSON FindingsFilter {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FindingCriteria" JSON..= findingCriteria, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Action" Prelude.<$> action,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Position" Prelude.<$> position])))
instance Property "Action" FindingsFilter where
  type PropertyType "Action" FindingsFilter = Value Prelude.Text
  set newValue FindingsFilter {..}
    = FindingsFilter {action = Prelude.pure newValue, ..}
instance Property "Description" FindingsFilter where
  type PropertyType "Description" FindingsFilter = Value Prelude.Text
  set newValue FindingsFilter {..}
    = FindingsFilter {description = Prelude.pure newValue, ..}
instance Property "FindingCriteria" FindingsFilter where
  type PropertyType "FindingCriteria" FindingsFilter = FindingCriteriaProperty
  set newValue FindingsFilter {..}
    = FindingsFilter {findingCriteria = newValue, ..}
instance Property "Name" FindingsFilter where
  type PropertyType "Name" FindingsFilter = Value Prelude.Text
  set newValue FindingsFilter {..}
    = FindingsFilter {name = newValue, ..}
instance Property "Position" FindingsFilter where
  type PropertyType "Position" FindingsFilter = Value Prelude.Integer
  set newValue FindingsFilter {..}
    = FindingsFilter {position = Prelude.pure newValue, ..}