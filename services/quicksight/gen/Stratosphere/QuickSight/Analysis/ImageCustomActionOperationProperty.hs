module Stratosphere.QuickSight.Analysis.ImageCustomActionOperationProperty (
        module Exports, ImageCustomActionOperationProperty(..),
        mkImageCustomActionOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CustomActionNavigationOperationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CustomActionSetParametersOperationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CustomActionURLOperationProperty as Exports
import Stratosphere.ResourceProperties
data ImageCustomActionOperationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-imagecustomactionoperation.html>
    ImageCustomActionOperationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-imagecustomactionoperation.html#cfn-quicksight-analysis-imagecustomactionoperation-navigationoperation>
                                        navigationOperation :: (Prelude.Maybe CustomActionNavigationOperationProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-imagecustomactionoperation.html#cfn-quicksight-analysis-imagecustomactionoperation-setparametersoperation>
                                        setParametersOperation :: (Prelude.Maybe CustomActionSetParametersOperationProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-imagecustomactionoperation.html#cfn-quicksight-analysis-imagecustomactionoperation-urloperation>
                                        uRLOperation :: (Prelude.Maybe CustomActionURLOperationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageCustomActionOperationProperty ::
  ImageCustomActionOperationProperty
mkImageCustomActionOperationProperty
  = ImageCustomActionOperationProperty
      {haddock_workaround_ = (), navigationOperation = Prelude.Nothing,
       setParametersOperation = Prelude.Nothing,
       uRLOperation = Prelude.Nothing}
instance ToResourceProperties ImageCustomActionOperationProperty where
  toResourceProperties ImageCustomActionOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ImageCustomActionOperation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NavigationOperation" Prelude.<$> navigationOperation,
                            (JSON..=) "SetParametersOperation"
                              Prelude.<$> setParametersOperation,
                            (JSON..=) "URLOperation" Prelude.<$> uRLOperation])}
instance JSON.ToJSON ImageCustomActionOperationProperty where
  toJSON ImageCustomActionOperationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NavigationOperation" Prelude.<$> navigationOperation,
               (JSON..=) "SetParametersOperation"
                 Prelude.<$> setParametersOperation,
               (JSON..=) "URLOperation" Prelude.<$> uRLOperation]))
instance Property "NavigationOperation" ImageCustomActionOperationProperty where
  type PropertyType "NavigationOperation" ImageCustomActionOperationProperty = CustomActionNavigationOperationProperty
  set newValue ImageCustomActionOperationProperty {..}
    = ImageCustomActionOperationProperty
        {navigationOperation = Prelude.pure newValue, ..}
instance Property "SetParametersOperation" ImageCustomActionOperationProperty where
  type PropertyType "SetParametersOperation" ImageCustomActionOperationProperty = CustomActionSetParametersOperationProperty
  set newValue ImageCustomActionOperationProperty {..}
    = ImageCustomActionOperationProperty
        {setParametersOperation = Prelude.pure newValue, ..}
instance Property "URLOperation" ImageCustomActionOperationProperty where
  type PropertyType "URLOperation" ImageCustomActionOperationProperty = CustomActionURLOperationProperty
  set newValue ImageCustomActionOperationProperty {..}
    = ImageCustomActionOperationProperty
        {uRLOperation = Prelude.pure newValue, ..}