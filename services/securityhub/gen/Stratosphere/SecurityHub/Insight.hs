module Stratosphere.SecurityHub.Insight (
        module Exports, Insight(..), mkInsight
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.Insight.AwsSecurityFindingFiltersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Insight
  = Insight {filters :: AwsSecurityFindingFiltersProperty,
             groupByAttribute :: (Value Prelude.Text),
             name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInsight ::
  AwsSecurityFindingFiltersProperty
  -> Value Prelude.Text -> Value Prelude.Text -> Insight
mkInsight filters groupByAttribute name
  = Insight
      {filters = filters, groupByAttribute = groupByAttribute,
       name = name}
instance ToResourceProperties Insight where
  toResourceProperties Insight {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::Insight",
         supportsTags = Prelude.False,
         properties = ["Filters" JSON..= filters,
                       "GroupByAttribute" JSON..= groupByAttribute, "Name" JSON..= name]}
instance JSON.ToJSON Insight where
  toJSON Insight {..}
    = JSON.object
        ["Filters" JSON..= filters,
         "GroupByAttribute" JSON..= groupByAttribute, "Name" JSON..= name]
instance Property "Filters" Insight where
  type PropertyType "Filters" Insight = AwsSecurityFindingFiltersProperty
  set newValue Insight {..} = Insight {filters = newValue, ..}
instance Property "GroupByAttribute" Insight where
  type PropertyType "GroupByAttribute" Insight = Value Prelude.Text
  set newValue Insight {..}
    = Insight {groupByAttribute = newValue, ..}
instance Property "Name" Insight where
  type PropertyType "Name" Insight = Value Prelude.Text
  set newValue Insight {..} = Insight {name = newValue, ..}