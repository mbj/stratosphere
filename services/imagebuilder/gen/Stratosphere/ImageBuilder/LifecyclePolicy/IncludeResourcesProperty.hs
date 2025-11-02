module Stratosphere.ImageBuilder.LifecyclePolicy.IncludeResourcesProperty (
        IncludeResourcesProperty(..), mkIncludeResourcesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IncludeResourcesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-includeresources.html>
    IncludeResourcesProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-includeresources.html#cfn-imagebuilder-lifecyclepolicy-includeresources-amis>
                              amis :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-includeresources.html#cfn-imagebuilder-lifecyclepolicy-includeresources-containers>
                              containers :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-includeresources.html#cfn-imagebuilder-lifecyclepolicy-includeresources-snapshots>
                              snapshots :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIncludeResourcesProperty :: IncludeResourcesProperty
mkIncludeResourcesProperty
  = IncludeResourcesProperty
      {haddock_workaround_ = (), amis = Prelude.Nothing,
       containers = Prelude.Nothing, snapshots = Prelude.Nothing}
instance ToResourceProperties IncludeResourcesProperty where
  toResourceProperties IncludeResourcesProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::LifecyclePolicy.IncludeResources",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Amis" Prelude.<$> amis,
                            (JSON..=) "Containers" Prelude.<$> containers,
                            (JSON..=) "Snapshots" Prelude.<$> snapshots])}
instance JSON.ToJSON IncludeResourcesProperty where
  toJSON IncludeResourcesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Amis" Prelude.<$> amis,
               (JSON..=) "Containers" Prelude.<$> containers,
               (JSON..=) "Snapshots" Prelude.<$> snapshots]))
instance Property "Amis" IncludeResourcesProperty where
  type PropertyType "Amis" IncludeResourcesProperty = Value Prelude.Bool
  set newValue IncludeResourcesProperty {..}
    = IncludeResourcesProperty {amis = Prelude.pure newValue, ..}
instance Property "Containers" IncludeResourcesProperty where
  type PropertyType "Containers" IncludeResourcesProperty = Value Prelude.Bool
  set newValue IncludeResourcesProperty {..}
    = IncludeResourcesProperty {containers = Prelude.pure newValue, ..}
instance Property "Snapshots" IncludeResourcesProperty where
  type PropertyType "Snapshots" IncludeResourcesProperty = Value Prelude.Bool
  set newValue IncludeResourcesProperty {..}
    = IncludeResourcesProperty {snapshots = Prelude.pure newValue, ..}