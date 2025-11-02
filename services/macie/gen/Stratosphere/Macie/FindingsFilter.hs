module Stratosphere.Macie.FindingsFilter (
        module Exports, FindingsFilter(..), mkFindingsFilter
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Macie.FindingsFilter.FindingCriteriaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data FindingsFilter
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-findingsfilter.html>
    FindingsFilter {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-findingsfilter.html#cfn-macie-findingsfilter-action>
                    action :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-findingsfilter.html#cfn-macie-findingsfilter-description>
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-findingsfilter.html#cfn-macie-findingsfilter-findingcriteria>
                    findingCriteria :: FindingCriteriaProperty,
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-findingsfilter.html#cfn-macie-findingsfilter-name>
                    name :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-findingsfilter.html#cfn-macie-findingsfilter-position>
                    position :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-macie-findingsfilter.html#cfn-macie-findingsfilter-tags>
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFindingsFilter ::
  FindingCriteriaProperty -> Value Prelude.Text -> FindingsFilter
mkFindingsFilter findingCriteria name
  = FindingsFilter
      {haddock_workaround_ = (), findingCriteria = findingCriteria,
       name = name, action = Prelude.Nothing,
       description = Prelude.Nothing, position = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties FindingsFilter where
  toResourceProperties FindingsFilter {..}
    = ResourceProperties
        {awsType = "AWS::Macie::FindingsFilter",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FindingCriteria" JSON..= findingCriteria, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Action" Prelude.<$> action,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Position" Prelude.<$> position,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON FindingsFilter where
  toJSON FindingsFilter {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FindingCriteria" JSON..= findingCriteria, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Action" Prelude.<$> action,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Position" Prelude.<$> position,
                  (JSON..=) "Tags" Prelude.<$> tags])))
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
instance Property "Tags" FindingsFilter where
  type PropertyType "Tags" FindingsFilter = [Tag]
  set newValue FindingsFilter {..}
    = FindingsFilter {tags = Prelude.pure newValue, ..}