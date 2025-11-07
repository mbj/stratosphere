module Stratosphere.QuickSight.Analysis.LayerCustomActionOperationProperty (
        module Exports, LayerCustomActionOperationProperty(..),
        mkLayerCustomActionOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CustomActionFilterOperationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CustomActionNavigationOperationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CustomActionSetParametersOperationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CustomActionURLOperationProperty as Exports
import Stratosphere.ResourceProperties
data LayerCustomActionOperationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-layercustomactionoperation.html>
    LayerCustomActionOperationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-layercustomactionoperation.html#cfn-quicksight-analysis-layercustomactionoperation-filteroperation>
                                        filterOperation :: (Prelude.Maybe CustomActionFilterOperationProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-layercustomactionoperation.html#cfn-quicksight-analysis-layercustomactionoperation-navigationoperation>
                                        navigationOperation :: (Prelude.Maybe CustomActionNavigationOperationProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-layercustomactionoperation.html#cfn-quicksight-analysis-layercustomactionoperation-setparametersoperation>
                                        setParametersOperation :: (Prelude.Maybe CustomActionSetParametersOperationProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-layercustomactionoperation.html#cfn-quicksight-analysis-layercustomactionoperation-urloperation>
                                        uRLOperation :: (Prelude.Maybe CustomActionURLOperationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLayerCustomActionOperationProperty ::
  LayerCustomActionOperationProperty
mkLayerCustomActionOperationProperty
  = LayerCustomActionOperationProperty
      {haddock_workaround_ = (), filterOperation = Prelude.Nothing,
       navigationOperation = Prelude.Nothing,
       setParametersOperation = Prelude.Nothing,
       uRLOperation = Prelude.Nothing}
instance ToResourceProperties LayerCustomActionOperationProperty where
  toResourceProperties LayerCustomActionOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.LayerCustomActionOperation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FilterOperation" Prelude.<$> filterOperation,
                            (JSON..=) "NavigationOperation" Prelude.<$> navigationOperation,
                            (JSON..=) "SetParametersOperation"
                              Prelude.<$> setParametersOperation,
                            (JSON..=) "URLOperation" Prelude.<$> uRLOperation])}
instance JSON.ToJSON LayerCustomActionOperationProperty where
  toJSON LayerCustomActionOperationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FilterOperation" Prelude.<$> filterOperation,
               (JSON..=) "NavigationOperation" Prelude.<$> navigationOperation,
               (JSON..=) "SetParametersOperation"
                 Prelude.<$> setParametersOperation,
               (JSON..=) "URLOperation" Prelude.<$> uRLOperation]))
instance Property "FilterOperation" LayerCustomActionOperationProperty where
  type PropertyType "FilterOperation" LayerCustomActionOperationProperty = CustomActionFilterOperationProperty
  set newValue LayerCustomActionOperationProperty {..}
    = LayerCustomActionOperationProperty
        {filterOperation = Prelude.pure newValue, ..}
instance Property "NavigationOperation" LayerCustomActionOperationProperty where
  type PropertyType "NavigationOperation" LayerCustomActionOperationProperty = CustomActionNavigationOperationProperty
  set newValue LayerCustomActionOperationProperty {..}
    = LayerCustomActionOperationProperty
        {navigationOperation = Prelude.pure newValue, ..}
instance Property "SetParametersOperation" LayerCustomActionOperationProperty where
  type PropertyType "SetParametersOperation" LayerCustomActionOperationProperty = CustomActionSetParametersOperationProperty
  set newValue LayerCustomActionOperationProperty {..}
    = LayerCustomActionOperationProperty
        {setParametersOperation = Prelude.pure newValue, ..}
instance Property "URLOperation" LayerCustomActionOperationProperty where
  type PropertyType "URLOperation" LayerCustomActionOperationProperty = CustomActionURLOperationProperty
  set newValue LayerCustomActionOperationProperty {..}
    = LayerCustomActionOperationProperty
        {uRLOperation = Prelude.pure newValue, ..}