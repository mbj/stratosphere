module Stratosphere.QuickSight.Analysis.UniqueValuesComputationProperty (
        module Exports, UniqueValuesComputationProperty(..),
        mkUniqueValuesComputationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DimensionFieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UniqueValuesComputationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-uniquevaluescomputation.html>
    UniqueValuesComputationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-uniquevaluescomputation.html#cfn-quicksight-analysis-uniquevaluescomputation-category>
                                     category :: (Prelude.Maybe DimensionFieldProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-uniquevaluescomputation.html#cfn-quicksight-analysis-uniquevaluescomputation-computationid>
                                     computationId :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-uniquevaluescomputation.html#cfn-quicksight-analysis-uniquevaluescomputation-name>
                                     name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUniqueValuesComputationProperty ::
  Value Prelude.Text -> UniqueValuesComputationProperty
mkUniqueValuesComputationProperty computationId
  = UniqueValuesComputationProperty
      {haddock_workaround_ = (), computationId = computationId,
       category = Prelude.Nothing, name = Prelude.Nothing}
instance ToResourceProperties UniqueValuesComputationProperty where
  toResourceProperties UniqueValuesComputationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.UniqueValuesComputation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComputationId" JSON..= computationId]
                           (Prelude.catMaybes
                              [(JSON..=) "Category" Prelude.<$> category,
                               (JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON UniqueValuesComputationProperty where
  toJSON UniqueValuesComputationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComputationId" JSON..= computationId]
              (Prelude.catMaybes
                 [(JSON..=) "Category" Prelude.<$> category,
                  (JSON..=) "Name" Prelude.<$> name])))
instance Property "Category" UniqueValuesComputationProperty where
  type PropertyType "Category" UniqueValuesComputationProperty = DimensionFieldProperty
  set newValue UniqueValuesComputationProperty {..}
    = UniqueValuesComputationProperty
        {category = Prelude.pure newValue, ..}
instance Property "ComputationId" UniqueValuesComputationProperty where
  type PropertyType "ComputationId" UniqueValuesComputationProperty = Value Prelude.Text
  set newValue UniqueValuesComputationProperty {..}
    = UniqueValuesComputationProperty {computationId = newValue, ..}
instance Property "Name" UniqueValuesComputationProperty where
  type PropertyType "Name" UniqueValuesComputationProperty = Value Prelude.Text
  set newValue UniqueValuesComputationProperty {..}
    = UniqueValuesComputationProperty
        {name = Prelude.pure newValue, ..}