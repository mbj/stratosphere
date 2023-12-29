module Stratosphere.Inspector.ResourceGroup (
        ResourceGroup(..), mkResourceGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
data ResourceGroup
  = ResourceGroup {resourceGroupTags :: [Tag]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceGroup :: [Tag] -> ResourceGroup
mkResourceGroup resourceGroupTags
  = ResourceGroup {resourceGroupTags = resourceGroupTags}
instance ToResourceProperties ResourceGroup where
  toResourceProperties ResourceGroup {..}
    = ResourceProperties
        {awsType = "AWS::Inspector::ResourceGroup",
         supportsTags = Prelude.False,
         properties = ["ResourceGroupTags" JSON..= resourceGroupTags]}
instance JSON.ToJSON ResourceGroup where
  toJSON ResourceGroup {..}
    = JSON.object ["ResourceGroupTags" JSON..= resourceGroupTags]
instance Property "ResourceGroupTags" ResourceGroup where
  type PropertyType "ResourceGroupTags" ResourceGroup = [Tag]
  set newValue ResourceGroup {}
    = ResourceGroup {resourceGroupTags = newValue, ..}