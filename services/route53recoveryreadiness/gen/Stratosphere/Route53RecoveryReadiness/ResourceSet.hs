module Stratosphere.Route53RecoveryReadiness.ResourceSet (
        module Exports, ResourceSet(..), mkResourceSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Route53RecoveryReadiness.ResourceSet.ResourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ResourceSet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53recoveryreadiness-resourceset.html>
    ResourceSet {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53recoveryreadiness-resourceset.html#cfn-route53recoveryreadiness-resourceset-resourcesetname>
                 resourceSetName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53recoveryreadiness-resourceset.html#cfn-route53recoveryreadiness-resourceset-resourcesettype>
                 resourceSetType :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53recoveryreadiness-resourceset.html#cfn-route53recoveryreadiness-resourceset-resources>
                 resources :: [ResourceProperty],
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53recoveryreadiness-resourceset.html#cfn-route53recoveryreadiness-resourceset-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceSet ::
  Value Prelude.Text -> [ResourceProperty] -> ResourceSet
mkResourceSet resourceSetType resources
  = ResourceSet
      {haddock_workaround_ = (), resourceSetType = resourceSetType,
       resources = resources, resourceSetName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ResourceSet where
  toResourceProperties ResourceSet {..}
    = ResourceProperties
        {awsType = "AWS::Route53RecoveryReadiness::ResourceSet",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResourceSetType" JSON..= resourceSetType,
                            "Resources" JSON..= resources]
                           (Prelude.catMaybes
                              [(JSON..=) "ResourceSetName" Prelude.<$> resourceSetName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ResourceSet where
  toJSON ResourceSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourceSetType" JSON..= resourceSetType,
               "Resources" JSON..= resources]
              (Prelude.catMaybes
                 [(JSON..=) "ResourceSetName" Prelude.<$> resourceSetName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ResourceSetName" ResourceSet where
  type PropertyType "ResourceSetName" ResourceSet = Value Prelude.Text
  set newValue ResourceSet {..}
    = ResourceSet {resourceSetName = Prelude.pure newValue, ..}
instance Property "ResourceSetType" ResourceSet where
  type PropertyType "ResourceSetType" ResourceSet = Value Prelude.Text
  set newValue ResourceSet {..}
    = ResourceSet {resourceSetType = newValue, ..}
instance Property "Resources" ResourceSet where
  type PropertyType "Resources" ResourceSet = [ResourceProperty]
  set newValue ResourceSet {..}
    = ResourceSet {resources = newValue, ..}
instance Property "Tags" ResourceSet where
  type PropertyType "Tags" ResourceSet = [Tag]
  set newValue ResourceSet {..}
    = ResourceSet {tags = Prelude.pure newValue, ..}