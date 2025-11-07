module Stratosphere.QuickSight.Template.PeriodOverPeriodComputationProperty (
        module Exports, PeriodOverPeriodComputationProperty(..),
        mkPeriodOverPeriodComputationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PeriodOverPeriodComputationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-periodoverperiodcomputation.html>
    PeriodOverPeriodComputationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-periodoverperiodcomputation.html#cfn-quicksight-template-periodoverperiodcomputation-computationid>
                                         computationId :: (Value Prelude.Text),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-periodoverperiodcomputation.html#cfn-quicksight-template-periodoverperiodcomputation-name>
                                         name :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-periodoverperiodcomputation.html#cfn-quicksight-template-periodoverperiodcomputation-time>
                                         time :: (Prelude.Maybe DimensionFieldProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-periodoverperiodcomputation.html#cfn-quicksight-template-periodoverperiodcomputation-value>
                                         value :: (Prelude.Maybe MeasureFieldProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPeriodOverPeriodComputationProperty ::
  Value Prelude.Text -> PeriodOverPeriodComputationProperty
mkPeriodOverPeriodComputationProperty computationId
  = PeriodOverPeriodComputationProperty
      {haddock_workaround_ = (), computationId = computationId,
       name = Prelude.Nothing, time = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties PeriodOverPeriodComputationProperty where
  toResourceProperties PeriodOverPeriodComputationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.PeriodOverPeriodComputation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComputationId" JSON..= computationId]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Time" Prelude.<$> time,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON PeriodOverPeriodComputationProperty where
  toJSON PeriodOverPeriodComputationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComputationId" JSON..= computationId]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Time" Prelude.<$> time,
                  (JSON..=) "Value" Prelude.<$> value])))
instance Property "ComputationId" PeriodOverPeriodComputationProperty where
  type PropertyType "ComputationId" PeriodOverPeriodComputationProperty = Value Prelude.Text
  set newValue PeriodOverPeriodComputationProperty {..}
    = PeriodOverPeriodComputationProperty
        {computationId = newValue, ..}
instance Property "Name" PeriodOverPeriodComputationProperty where
  type PropertyType "Name" PeriodOverPeriodComputationProperty = Value Prelude.Text
  set newValue PeriodOverPeriodComputationProperty {..}
    = PeriodOverPeriodComputationProperty
        {name = Prelude.pure newValue, ..}
instance Property "Time" PeriodOverPeriodComputationProperty where
  type PropertyType "Time" PeriodOverPeriodComputationProperty = DimensionFieldProperty
  set newValue PeriodOverPeriodComputationProperty {..}
    = PeriodOverPeriodComputationProperty
        {time = Prelude.pure newValue, ..}
instance Property "Value" PeriodOverPeriodComputationProperty where
  type PropertyType "Value" PeriodOverPeriodComputationProperty = MeasureFieldProperty
  set newValue PeriodOverPeriodComputationProperty {..}
    = PeriodOverPeriodComputationProperty
        {value = Prelude.pure newValue, ..}