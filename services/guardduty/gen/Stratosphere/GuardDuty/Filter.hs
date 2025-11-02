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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-filter.html>
    Filter {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-filter.html#cfn-guardduty-filter-action>
            action :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-filter.html#cfn-guardduty-filter-description>
            description :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-filter.html#cfn-guardduty-filter-detectorid>
            detectorId :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-filter.html#cfn-guardduty-filter-findingcriteria>
            findingCriteria :: FindingCriteriaProperty,
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-filter.html#cfn-guardduty-filter-name>
            name :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-filter.html#cfn-guardduty-filter-rank>
            rank :: (Prelude.Maybe (Value Prelude.Integer)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-filter.html#cfn-guardduty-filter-tags>
            tags :: (Prelude.Maybe [TagItemProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilter ::
  Value Prelude.Text
  -> FindingCriteriaProperty -> Value Prelude.Text -> Filter
mkFilter detectorId findingCriteria name
  = Filter
      {haddock_workaround_ = (), detectorId = detectorId,
       findingCriteria = findingCriteria, name = name,
       action = Prelude.Nothing, description = Prelude.Nothing,
       rank = Prelude.Nothing, tags = Prelude.Nothing}
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