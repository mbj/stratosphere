module Stratosphere.DLM.LifecyclePolicy.ExclusionsProperty (
        module Exports, ExclusionsProperty(..), mkExclusionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.ExcludeTagsProperty as Exports
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.ExcludeVolumeTypesListProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExclusionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-exclusions.html>
    ExclusionsProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-exclusions.html#cfn-dlm-lifecyclepolicy-exclusions-excludebootvolumes>
                        excludeBootVolumes :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-exclusions.html#cfn-dlm-lifecyclepolicy-exclusions-excludetags>
                        excludeTags :: (Prelude.Maybe ExcludeTagsProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-exclusions.html#cfn-dlm-lifecyclepolicy-exclusions-excludevolumetypes>
                        excludeVolumeTypes :: (Prelude.Maybe ExcludeVolumeTypesListProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExclusionsProperty :: ExclusionsProperty
mkExclusionsProperty
  = ExclusionsProperty
      {haddock_workaround_ = (), excludeBootVolumes = Prelude.Nothing,
       excludeTags = Prelude.Nothing,
       excludeVolumeTypes = Prelude.Nothing}
instance ToResourceProperties ExclusionsProperty where
  toResourceProperties ExclusionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.Exclusions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExcludeBootVolumes" Prelude.<$> excludeBootVolumes,
                            (JSON..=) "ExcludeTags" Prelude.<$> excludeTags,
                            (JSON..=) "ExcludeVolumeTypes" Prelude.<$> excludeVolumeTypes])}
instance JSON.ToJSON ExclusionsProperty where
  toJSON ExclusionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExcludeBootVolumes" Prelude.<$> excludeBootVolumes,
               (JSON..=) "ExcludeTags" Prelude.<$> excludeTags,
               (JSON..=) "ExcludeVolumeTypes" Prelude.<$> excludeVolumeTypes]))
instance Property "ExcludeBootVolumes" ExclusionsProperty where
  type PropertyType "ExcludeBootVolumes" ExclusionsProperty = Value Prelude.Bool
  set newValue ExclusionsProperty {..}
    = ExclusionsProperty
        {excludeBootVolumes = Prelude.pure newValue, ..}
instance Property "ExcludeTags" ExclusionsProperty where
  type PropertyType "ExcludeTags" ExclusionsProperty = ExcludeTagsProperty
  set newValue ExclusionsProperty {..}
    = ExclusionsProperty {excludeTags = Prelude.pure newValue, ..}
instance Property "ExcludeVolumeTypes" ExclusionsProperty where
  type PropertyType "ExcludeVolumeTypes" ExclusionsProperty = ExcludeVolumeTypesListProperty
  set newValue ExclusionsProperty {..}
    = ExclusionsProperty
        {excludeVolumeTypes = Prelude.pure newValue, ..}