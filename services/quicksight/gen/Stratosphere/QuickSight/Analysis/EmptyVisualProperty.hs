module Stratosphere.QuickSight.Analysis.EmptyVisualProperty (
        module Exports, EmptyVisualProperty(..), mkEmptyVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EmptyVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-emptyvisual.html>
    EmptyVisualProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-emptyvisual.html#cfn-quicksight-analysis-emptyvisual-actions>
                         actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-emptyvisual.html#cfn-quicksight-analysis-emptyvisual-datasetidentifier>
                         dataSetIdentifier :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-emptyvisual.html#cfn-quicksight-analysis-emptyvisual-visualid>
                         visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEmptyVisualProperty ::
  Value Prelude.Text -> Value Prelude.Text -> EmptyVisualProperty
mkEmptyVisualProperty dataSetIdentifier visualId
  = EmptyVisualProperty
      {haddock_workaround_ = (), dataSetIdentifier = dataSetIdentifier,
       visualId = visualId, actions = Prelude.Nothing}
instance ToResourceProperties EmptyVisualProperty where
  toResourceProperties EmptyVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.EmptyVisual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSetIdentifier" JSON..= dataSetIdentifier,
                            "VisualId" JSON..= visualId]
                           (Prelude.catMaybes [(JSON..=) "Actions" Prelude.<$> actions]))}
instance JSON.ToJSON EmptyVisualProperty where
  toJSON EmptyVisualProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSetIdentifier" JSON..= dataSetIdentifier,
               "VisualId" JSON..= visualId]
              (Prelude.catMaybes [(JSON..=) "Actions" Prelude.<$> actions])))
instance Property "Actions" EmptyVisualProperty where
  type PropertyType "Actions" EmptyVisualProperty = [VisualCustomActionProperty]
  set newValue EmptyVisualProperty {..}
    = EmptyVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "DataSetIdentifier" EmptyVisualProperty where
  type PropertyType "DataSetIdentifier" EmptyVisualProperty = Value Prelude.Text
  set newValue EmptyVisualProperty {..}
    = EmptyVisualProperty {dataSetIdentifier = newValue, ..}
instance Property "VisualId" EmptyVisualProperty where
  type PropertyType "VisualId" EmptyVisualProperty = Value Prelude.Text
  set newValue EmptyVisualProperty {..}
    = EmptyVisualProperty {visualId = newValue, ..}