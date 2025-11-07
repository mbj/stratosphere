module Stratosphere.QuickSight.Template.VisualCustomActionOperationProperty (
        module Exports, VisualCustomActionOperationProperty(..),
        mkVisualCustomActionOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.CustomActionFilterOperationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.CustomActionNavigationOperationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.CustomActionSetParametersOperationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.CustomActionURLOperationProperty as Exports
import Stratosphere.ResourceProperties
data VisualCustomActionOperationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visualcustomactionoperation.html>
    VisualCustomActionOperationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visualcustomactionoperation.html#cfn-quicksight-template-visualcustomactionoperation-filteroperation>
                                         filterOperation :: (Prelude.Maybe CustomActionFilterOperationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visualcustomactionoperation.html#cfn-quicksight-template-visualcustomactionoperation-navigationoperation>
                                         navigationOperation :: (Prelude.Maybe CustomActionNavigationOperationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visualcustomactionoperation.html#cfn-quicksight-template-visualcustomactionoperation-setparametersoperation>
                                         setParametersOperation :: (Prelude.Maybe CustomActionSetParametersOperationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visualcustomactionoperation.html#cfn-quicksight-template-visualcustomactionoperation-urloperation>
                                         uRLOperation :: (Prelude.Maybe CustomActionURLOperationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVisualCustomActionOperationProperty ::
  VisualCustomActionOperationProperty
mkVisualCustomActionOperationProperty
  = VisualCustomActionOperationProperty
      {haddock_workaround_ = (), filterOperation = Prelude.Nothing,
       navigationOperation = Prelude.Nothing,
       setParametersOperation = Prelude.Nothing,
       uRLOperation = Prelude.Nothing}
instance ToResourceProperties VisualCustomActionOperationProperty where
  toResourceProperties VisualCustomActionOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.VisualCustomActionOperation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FilterOperation" Prelude.<$> filterOperation,
                            (JSON..=) "NavigationOperation" Prelude.<$> navigationOperation,
                            (JSON..=) "SetParametersOperation"
                              Prelude.<$> setParametersOperation,
                            (JSON..=) "URLOperation" Prelude.<$> uRLOperation])}
instance JSON.ToJSON VisualCustomActionOperationProperty where
  toJSON VisualCustomActionOperationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FilterOperation" Prelude.<$> filterOperation,
               (JSON..=) "NavigationOperation" Prelude.<$> navigationOperation,
               (JSON..=) "SetParametersOperation"
                 Prelude.<$> setParametersOperation,
               (JSON..=) "URLOperation" Prelude.<$> uRLOperation]))
instance Property "FilterOperation" VisualCustomActionOperationProperty where
  type PropertyType "FilterOperation" VisualCustomActionOperationProperty = CustomActionFilterOperationProperty
  set newValue VisualCustomActionOperationProperty {..}
    = VisualCustomActionOperationProperty
        {filterOperation = Prelude.pure newValue, ..}
instance Property "NavigationOperation" VisualCustomActionOperationProperty where
  type PropertyType "NavigationOperation" VisualCustomActionOperationProperty = CustomActionNavigationOperationProperty
  set newValue VisualCustomActionOperationProperty {..}
    = VisualCustomActionOperationProperty
        {navigationOperation = Prelude.pure newValue, ..}
instance Property "SetParametersOperation" VisualCustomActionOperationProperty where
  type PropertyType "SetParametersOperation" VisualCustomActionOperationProperty = CustomActionSetParametersOperationProperty
  set newValue VisualCustomActionOperationProperty {..}
    = VisualCustomActionOperationProperty
        {setParametersOperation = Prelude.pure newValue, ..}
instance Property "URLOperation" VisualCustomActionOperationProperty where
  type PropertyType "URLOperation" VisualCustomActionOperationProperty = CustomActionURLOperationProperty
  set newValue VisualCustomActionOperationProperty {..}
    = VisualCustomActionOperationProperty
        {uRLOperation = Prelude.pure newValue, ..}