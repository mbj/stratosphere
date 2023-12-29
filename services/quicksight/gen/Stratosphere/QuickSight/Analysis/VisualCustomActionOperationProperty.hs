module Stratosphere.QuickSight.Analysis.VisualCustomActionOperationProperty (
        module Exports, VisualCustomActionOperationProperty(..),
        mkVisualCustomActionOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CustomActionFilterOperationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CustomActionNavigationOperationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CustomActionSetParametersOperationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CustomActionURLOperationProperty as Exports
import Stratosphere.ResourceProperties
data VisualCustomActionOperationProperty
  = VisualCustomActionOperationProperty {filterOperation :: (Prelude.Maybe CustomActionFilterOperationProperty),
                                         navigationOperation :: (Prelude.Maybe CustomActionNavigationOperationProperty),
                                         setParametersOperation :: (Prelude.Maybe CustomActionSetParametersOperationProperty),
                                         uRLOperation :: (Prelude.Maybe CustomActionURLOperationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVisualCustomActionOperationProperty ::
  VisualCustomActionOperationProperty
mkVisualCustomActionOperationProperty
  = VisualCustomActionOperationProperty
      {filterOperation = Prelude.Nothing,
       navigationOperation = Prelude.Nothing,
       setParametersOperation = Prelude.Nothing,
       uRLOperation = Prelude.Nothing}
instance ToResourceProperties VisualCustomActionOperationProperty where
  toResourceProperties VisualCustomActionOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.VisualCustomActionOperation",
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