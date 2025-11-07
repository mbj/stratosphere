module Stratosphere.RTBFabric.Link.FilterProperty (
        module Exports, FilterProperty(..), mkFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RTBFabric.Link.FilterCriterionProperty as Exports
import Stratosphere.ResourceProperties
data FilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-filter.html>
    FilterProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-filter.html#cfn-rtbfabric-link-filter-criteria>
                    criteria :: [FilterCriterionProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterProperty :: [FilterCriterionProperty] -> FilterProperty
mkFilterProperty criteria
  = FilterProperty {haddock_workaround_ = (), criteria = criteria}
instance ToResourceProperties FilterProperty where
  toResourceProperties FilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::RTBFabric::Link.Filter",
         supportsTags = Prelude.False,
         properties = ["Criteria" JSON..= criteria]}
instance JSON.ToJSON FilterProperty where
  toJSON FilterProperty {..}
    = JSON.object ["Criteria" JSON..= criteria]
instance Property "Criteria" FilterProperty where
  type PropertyType "Criteria" FilterProperty = [FilterCriterionProperty]
  set newValue FilterProperty {..}
    = FilterProperty {criteria = newValue, ..}