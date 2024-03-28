module Stratosphere.EFS.FileSystem.LifecyclePolicyProperty (
        LifecyclePolicyProperty(..), mkLifecyclePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LifecyclePolicyProperty
  = LifecyclePolicyProperty {transitionToArchive :: (Prelude.Maybe (Value Prelude.Text)),
                             transitionToIA :: (Prelude.Maybe (Value Prelude.Text)),
                             transitionToPrimaryStorageClass :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLifecyclePolicyProperty :: LifecyclePolicyProperty
mkLifecyclePolicyProperty
  = LifecyclePolicyProperty
      {transitionToArchive = Prelude.Nothing,
       transitionToIA = Prelude.Nothing,
       transitionToPrimaryStorageClass = Prelude.Nothing}
instance ToResourceProperties LifecyclePolicyProperty where
  toResourceProperties LifecyclePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::EFS::FileSystem.LifecyclePolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TransitionToArchive" Prelude.<$> transitionToArchive,
                            (JSON..=) "TransitionToIA" Prelude.<$> transitionToIA,
                            (JSON..=) "TransitionToPrimaryStorageClass"
                              Prelude.<$> transitionToPrimaryStorageClass])}
instance JSON.ToJSON LifecyclePolicyProperty where
  toJSON LifecyclePolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TransitionToArchive" Prelude.<$> transitionToArchive,
               (JSON..=) "TransitionToIA" Prelude.<$> transitionToIA,
               (JSON..=) "TransitionToPrimaryStorageClass"
                 Prelude.<$> transitionToPrimaryStorageClass]))
instance Property "TransitionToArchive" LifecyclePolicyProperty where
  type PropertyType "TransitionToArchive" LifecyclePolicyProperty = Value Prelude.Text
  set newValue LifecyclePolicyProperty {..}
    = LifecyclePolicyProperty
        {transitionToArchive = Prelude.pure newValue, ..}
instance Property "TransitionToIA" LifecyclePolicyProperty where
  type PropertyType "TransitionToIA" LifecyclePolicyProperty = Value Prelude.Text
  set newValue LifecyclePolicyProperty {..}
    = LifecyclePolicyProperty
        {transitionToIA = Prelude.pure newValue, ..}
instance Property "TransitionToPrimaryStorageClass" LifecyclePolicyProperty where
  type PropertyType "TransitionToPrimaryStorageClass" LifecyclePolicyProperty = Value Prelude.Text
  set newValue LifecyclePolicyProperty {..}
    = LifecyclePolicyProperty
        {transitionToPrimaryStorageClass = Prelude.pure newValue, ..}