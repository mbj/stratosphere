module Stratosphere.SSM.PatchBaseline.PatchFilterGroupProperty (
        module Exports, PatchFilterGroupProperty(..),
        mkPatchFilterGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSM.PatchBaseline.PatchFilterProperty as Exports
import Stratosphere.ResourceProperties
data PatchFilterGroupProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfiltergroup.html>
    PatchFilterGroupProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfiltergroup.html#cfn-ssm-patchbaseline-patchfiltergroup-patchfilters>
                              patchFilters :: (Prelude.Maybe [PatchFilterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPatchFilterGroupProperty :: PatchFilterGroupProperty
mkPatchFilterGroupProperty
  = PatchFilterGroupProperty {patchFilters = Prelude.Nothing}
instance ToResourceProperties PatchFilterGroupProperty where
  toResourceProperties PatchFilterGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::PatchBaseline.PatchFilterGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PatchFilters" Prelude.<$> patchFilters])}
instance JSON.ToJSON PatchFilterGroupProperty where
  toJSON PatchFilterGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PatchFilters" Prelude.<$> patchFilters]))
instance Property "PatchFilters" PatchFilterGroupProperty where
  type PropertyType "PatchFilters" PatchFilterGroupProperty = [PatchFilterProperty]
  set newValue PatchFilterGroupProperty {}
    = PatchFilterGroupProperty
        {patchFilters = Prelude.pure newValue, ..}