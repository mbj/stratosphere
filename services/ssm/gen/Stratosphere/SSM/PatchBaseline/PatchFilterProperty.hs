module Stratosphere.SSM.PatchBaseline.PatchFilterProperty (
        PatchFilterProperty(..), mkPatchFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PatchFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfilter.html>
    PatchFilterProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfilter.html#cfn-ssm-patchbaseline-patchfilter-key>
                         key :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfilter.html#cfn-ssm-patchbaseline-patchfilter-values>
                         values :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPatchFilterProperty :: PatchFilterProperty
mkPatchFilterProperty
  = PatchFilterProperty
      {haddock_workaround_ = (), key = Prelude.Nothing,
       values = Prelude.Nothing}
instance ToResourceProperties PatchFilterProperty where
  toResourceProperties PatchFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::PatchBaseline.PatchFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON PatchFilterProperty where
  toJSON PatchFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Key" PatchFilterProperty where
  type PropertyType "Key" PatchFilterProperty = Value Prelude.Text
  set newValue PatchFilterProperty {..}
    = PatchFilterProperty {key = Prelude.pure newValue, ..}
instance Property "Values" PatchFilterProperty where
  type PropertyType "Values" PatchFilterProperty = ValueList Prelude.Text
  set newValue PatchFilterProperty {..}
    = PatchFilterProperty {values = Prelude.pure newValue, ..}