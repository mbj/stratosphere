module Stratosphere.SageMaker.Space (
        module Exports, Space(..), mkSpace
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Space.OwnershipSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Space.SpaceSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Space.SpaceSharingSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Space
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-space.html>
    Space {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-space.html#cfn-sagemaker-space-domainid>
           domainId :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-space.html#cfn-sagemaker-space-ownershipsettings>
           ownershipSettings :: (Prelude.Maybe OwnershipSettingsProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-space.html#cfn-sagemaker-space-spacedisplayname>
           spaceDisplayName :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-space.html#cfn-sagemaker-space-spacename>
           spaceName :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-space.html#cfn-sagemaker-space-spacesettings>
           spaceSettings :: (Prelude.Maybe SpaceSettingsProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-space.html#cfn-sagemaker-space-spacesharingsettings>
           spaceSharingSettings :: (Prelude.Maybe SpaceSharingSettingsProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-space.html#cfn-sagemaker-space-tags>
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpace :: Value Prelude.Text -> Value Prelude.Text -> Space
mkSpace domainId spaceName
  = Space
      {haddock_workaround_ = (), domainId = domainId,
       spaceName = spaceName, ownershipSettings = Prelude.Nothing,
       spaceDisplayName = Prelude.Nothing,
       spaceSettings = Prelude.Nothing,
       spaceSharingSettings = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Space where
  toResourceProperties Space {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Space", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainId" JSON..= domainId, "SpaceName" JSON..= spaceName]
                           (Prelude.catMaybes
                              [(JSON..=) "OwnershipSettings" Prelude.<$> ownershipSettings,
                               (JSON..=) "SpaceDisplayName" Prelude.<$> spaceDisplayName,
                               (JSON..=) "SpaceSettings" Prelude.<$> spaceSettings,
                               (JSON..=) "SpaceSharingSettings" Prelude.<$> spaceSharingSettings,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Space where
  toJSON Space {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainId" JSON..= domainId, "SpaceName" JSON..= spaceName]
              (Prelude.catMaybes
                 [(JSON..=) "OwnershipSettings" Prelude.<$> ownershipSettings,
                  (JSON..=) "SpaceDisplayName" Prelude.<$> spaceDisplayName,
                  (JSON..=) "SpaceSettings" Prelude.<$> spaceSettings,
                  (JSON..=) "SpaceSharingSettings" Prelude.<$> spaceSharingSettings,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DomainId" Space where
  type PropertyType "DomainId" Space = Value Prelude.Text
  set newValue Space {..} = Space {domainId = newValue, ..}
instance Property "OwnershipSettings" Space where
  type PropertyType "OwnershipSettings" Space = OwnershipSettingsProperty
  set newValue Space {..}
    = Space {ownershipSettings = Prelude.pure newValue, ..}
instance Property "SpaceDisplayName" Space where
  type PropertyType "SpaceDisplayName" Space = Value Prelude.Text
  set newValue Space {..}
    = Space {spaceDisplayName = Prelude.pure newValue, ..}
instance Property "SpaceName" Space where
  type PropertyType "SpaceName" Space = Value Prelude.Text
  set newValue Space {..} = Space {spaceName = newValue, ..}
instance Property "SpaceSettings" Space where
  type PropertyType "SpaceSettings" Space = SpaceSettingsProperty
  set newValue Space {..}
    = Space {spaceSettings = Prelude.pure newValue, ..}
instance Property "SpaceSharingSettings" Space where
  type PropertyType "SpaceSharingSettings" Space = SpaceSharingSettingsProperty
  set newValue Space {..}
    = Space {spaceSharingSettings = Prelude.pure newValue, ..}
instance Property "Tags" Space where
  type PropertyType "Tags" Space = [Tag]
  set newValue Space {..} = Space {tags = Prelude.pure newValue, ..}