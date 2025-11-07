module Stratosphere.QuickSight.Template.TopBottomRankedComputationProperty (
        module Exports, TopBottomRankedComputationProperty(..),
        mkTopBottomRankedComputationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopBottomRankedComputationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-topbottomrankedcomputation.html>
    TopBottomRankedComputationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-topbottomrankedcomputation.html#cfn-quicksight-template-topbottomrankedcomputation-category>
                                        category :: (Prelude.Maybe DimensionFieldProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-topbottomrankedcomputation.html#cfn-quicksight-template-topbottomrankedcomputation-computationid>
                                        computationId :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-topbottomrankedcomputation.html#cfn-quicksight-template-topbottomrankedcomputation-name>
                                        name :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-topbottomrankedcomputation.html#cfn-quicksight-template-topbottomrankedcomputation-resultsize>
                                        resultSize :: (Prelude.Maybe (Value Prelude.Double)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-topbottomrankedcomputation.html#cfn-quicksight-template-topbottomrankedcomputation-type>
                                        type' :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-topbottomrankedcomputation.html#cfn-quicksight-template-topbottomrankedcomputation-value>
                                        value :: (Prelude.Maybe MeasureFieldProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopBottomRankedComputationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> TopBottomRankedComputationProperty
mkTopBottomRankedComputationProperty computationId type'
  = TopBottomRankedComputationProperty
      {haddock_workaround_ = (), computationId = computationId,
       type' = type', category = Prelude.Nothing, name = Prelude.Nothing,
       resultSize = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties TopBottomRankedComputationProperty where
  toResourceProperties TopBottomRankedComputationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TopBottomRankedComputation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComputationId" JSON..= computationId, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Category" Prelude.<$> category,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "ResultSize" Prelude.<$> resultSize,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON TopBottomRankedComputationProperty where
  toJSON TopBottomRankedComputationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComputationId" JSON..= computationId, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Category" Prelude.<$> category,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "ResultSize" Prelude.<$> resultSize,
                  (JSON..=) "Value" Prelude.<$> value])))
instance Property "Category" TopBottomRankedComputationProperty where
  type PropertyType "Category" TopBottomRankedComputationProperty = DimensionFieldProperty
  set newValue TopBottomRankedComputationProperty {..}
    = TopBottomRankedComputationProperty
        {category = Prelude.pure newValue, ..}
instance Property "ComputationId" TopBottomRankedComputationProperty where
  type PropertyType "ComputationId" TopBottomRankedComputationProperty = Value Prelude.Text
  set newValue TopBottomRankedComputationProperty {..}
    = TopBottomRankedComputationProperty {computationId = newValue, ..}
instance Property "Name" TopBottomRankedComputationProperty where
  type PropertyType "Name" TopBottomRankedComputationProperty = Value Prelude.Text
  set newValue TopBottomRankedComputationProperty {..}
    = TopBottomRankedComputationProperty
        {name = Prelude.pure newValue, ..}
instance Property "ResultSize" TopBottomRankedComputationProperty where
  type PropertyType "ResultSize" TopBottomRankedComputationProperty = Value Prelude.Double
  set newValue TopBottomRankedComputationProperty {..}
    = TopBottomRankedComputationProperty
        {resultSize = Prelude.pure newValue, ..}
instance Property "Type" TopBottomRankedComputationProperty where
  type PropertyType "Type" TopBottomRankedComputationProperty = Value Prelude.Text
  set newValue TopBottomRankedComputationProperty {..}
    = TopBottomRankedComputationProperty {type' = newValue, ..}
instance Property "Value" TopBottomRankedComputationProperty where
  type PropertyType "Value" TopBottomRankedComputationProperty = MeasureFieldProperty
  set newValue TopBottomRankedComputationProperty {..}
    = TopBottomRankedComputationProperty
        {value = Prelude.pure newValue, ..}