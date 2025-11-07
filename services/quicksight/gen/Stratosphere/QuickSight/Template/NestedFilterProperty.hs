module Stratosphere.QuickSight.Template.NestedFilterProperty (
        module Exports, NestedFilterProperty(..), mkNestedFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.InnerFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NestedFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-nestedfilter.html>
    NestedFilterProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-nestedfilter.html#cfn-quicksight-template-nestedfilter-column>
                          column :: ColumnIdentifierProperty,
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-nestedfilter.html#cfn-quicksight-template-nestedfilter-filterid>
                          filterId :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-nestedfilter.html#cfn-quicksight-template-nestedfilter-includeinnerset>
                          includeInnerSet :: (Value Prelude.Bool),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-nestedfilter.html#cfn-quicksight-template-nestedfilter-innerfilter>
                          innerFilter :: InnerFilterProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNestedFilterProperty ::
  ColumnIdentifierProperty
  -> Value Prelude.Text
     -> Value Prelude.Bool
        -> InnerFilterProperty -> NestedFilterProperty
mkNestedFilterProperty column filterId includeInnerSet innerFilter
  = NestedFilterProperty
      {haddock_workaround_ = (), column = column, filterId = filterId,
       includeInnerSet = includeInnerSet, innerFilter = innerFilter}
instance ToResourceProperties NestedFilterProperty where
  toResourceProperties NestedFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.NestedFilter",
         supportsTags = Prelude.False,
         properties = ["Column" JSON..= column, "FilterId" JSON..= filterId,
                       "IncludeInnerSet" JSON..= includeInnerSet,
                       "InnerFilter" JSON..= innerFilter]}
instance JSON.ToJSON NestedFilterProperty where
  toJSON NestedFilterProperty {..}
    = JSON.object
        ["Column" JSON..= column, "FilterId" JSON..= filterId,
         "IncludeInnerSet" JSON..= includeInnerSet,
         "InnerFilter" JSON..= innerFilter]
instance Property "Column" NestedFilterProperty where
  type PropertyType "Column" NestedFilterProperty = ColumnIdentifierProperty
  set newValue NestedFilterProperty {..}
    = NestedFilterProperty {column = newValue, ..}
instance Property "FilterId" NestedFilterProperty where
  type PropertyType "FilterId" NestedFilterProperty = Value Prelude.Text
  set newValue NestedFilterProperty {..}
    = NestedFilterProperty {filterId = newValue, ..}
instance Property "IncludeInnerSet" NestedFilterProperty where
  type PropertyType "IncludeInnerSet" NestedFilterProperty = Value Prelude.Bool
  set newValue NestedFilterProperty {..}
    = NestedFilterProperty {includeInnerSet = newValue, ..}
instance Property "InnerFilter" NestedFilterProperty where
  type PropertyType "InnerFilter" NestedFilterProperty = InnerFilterProperty
  set newValue NestedFilterProperty {..}
    = NestedFilterProperty {innerFilter = newValue, ..}