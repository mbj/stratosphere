module Stratosphere.LakeFormation.TagAssociation (
        module Exports, TagAssociation(..), mkTagAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LakeFormation.TagAssociation.LFTagPairProperty as Exports
import {-# SOURCE #-} Stratosphere.LakeFormation.TagAssociation.ResourceProperty as Exports
import Stratosphere.ResourceProperties
data TagAssociation
  = TagAssociation {lFTags :: [LFTagPairProperty],
                    resource :: ResourceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagAssociation ::
  [LFTagPairProperty] -> ResourceProperty -> TagAssociation
mkTagAssociation lFTags resource
  = TagAssociation {lFTags = lFTags, resource = resource}
instance ToResourceProperties TagAssociation where
  toResourceProperties TagAssociation {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::TagAssociation",
         supportsTags = Prelude.False,
         properties = ["LFTags" JSON..= lFTags,
                       "Resource" JSON..= resource]}
instance JSON.ToJSON TagAssociation where
  toJSON TagAssociation {..}
    = JSON.object
        ["LFTags" JSON..= lFTags, "Resource" JSON..= resource]
instance Property "LFTags" TagAssociation where
  type PropertyType "LFTags" TagAssociation = [LFTagPairProperty]
  set newValue TagAssociation {..}
    = TagAssociation {lFTags = newValue, ..}
instance Property "Resource" TagAssociation where
  type PropertyType "Resource" TagAssociation = ResourceProperty
  set newValue TagAssociation {..}
    = TagAssociation {resource = newValue, ..}