module Stratosphere.LakeFormation.PrincipalPermissions.LFTagPolicyResourceProperty (
        module Exports, LFTagPolicyResourceProperty(..),
        mkLFTagPolicyResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LakeFormation.PrincipalPermissions.LFTagProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LFTagPolicyResourceProperty
  = LFTagPolicyResourceProperty {catalogId :: (Value Prelude.Text),
                                 expression :: [LFTagProperty],
                                 resourceType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLFTagPolicyResourceProperty ::
  Value Prelude.Text
  -> [LFTagProperty]
     -> Value Prelude.Text -> LFTagPolicyResourceProperty
mkLFTagPolicyResourceProperty catalogId expression resourceType
  = LFTagPolicyResourceProperty
      {catalogId = catalogId, expression = expression,
       resourceType = resourceType}
instance ToResourceProperties LFTagPolicyResourceProperty where
  toResourceProperties LFTagPolicyResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::PrincipalPermissions.LFTagPolicyResource",
         supportsTags = Prelude.False,
         properties = ["CatalogId" JSON..= catalogId,
                       "Expression" JSON..= expression,
                       "ResourceType" JSON..= resourceType]}
instance JSON.ToJSON LFTagPolicyResourceProperty where
  toJSON LFTagPolicyResourceProperty {..}
    = JSON.object
        ["CatalogId" JSON..= catalogId, "Expression" JSON..= expression,
         "ResourceType" JSON..= resourceType]
instance Property "CatalogId" LFTagPolicyResourceProperty where
  type PropertyType "CatalogId" LFTagPolicyResourceProperty = Value Prelude.Text
  set newValue LFTagPolicyResourceProperty {..}
    = LFTagPolicyResourceProperty {catalogId = newValue, ..}
instance Property "Expression" LFTagPolicyResourceProperty where
  type PropertyType "Expression" LFTagPolicyResourceProperty = [LFTagProperty]
  set newValue LFTagPolicyResourceProperty {..}
    = LFTagPolicyResourceProperty {expression = newValue, ..}
instance Property "ResourceType" LFTagPolicyResourceProperty where
  type PropertyType "ResourceType" LFTagPolicyResourceProperty = Value Prelude.Text
  set newValue LFTagPolicyResourceProperty {..}
    = LFTagPolicyResourceProperty {resourceType = newValue, ..}