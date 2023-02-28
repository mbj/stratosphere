module Stratosphere.LakeFormation.PrincipalPermissions.LFTagProperty (
        LFTagProperty(..), mkLFTagProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LFTagProperty
  = LFTagProperty {tagKey :: (Prelude.Maybe (Value Prelude.Text)),
                   tagValues :: (Prelude.Maybe (ValueList Prelude.Text))}
mkLFTagProperty :: LFTagProperty
mkLFTagProperty
  = LFTagProperty
      {tagKey = Prelude.Nothing, tagValues = Prelude.Nothing}
instance ToResourceProperties LFTagProperty where
  toResourceProperties LFTagProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::PrincipalPermissions.LFTag",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TagKey" Prelude.<$> tagKey,
                            (JSON..=) "TagValues" Prelude.<$> tagValues])}
instance JSON.ToJSON LFTagProperty where
  toJSON LFTagProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TagKey" Prelude.<$> tagKey,
               (JSON..=) "TagValues" Prelude.<$> tagValues]))
instance Property "TagKey" LFTagProperty where
  type PropertyType "TagKey" LFTagProperty = Value Prelude.Text
  set newValue LFTagProperty {..}
    = LFTagProperty {tagKey = Prelude.pure newValue, ..}
instance Property "TagValues" LFTagProperty where
  type PropertyType "TagValues" LFTagProperty = ValueList Prelude.Text
  set newValue LFTagProperty {..}
    = LFTagProperty {tagValues = Prelude.pure newValue, ..}