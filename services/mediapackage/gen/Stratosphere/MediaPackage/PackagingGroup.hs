module Stratosphere.MediaPackage.PackagingGroup (
        module Exports, PackagingGroup(..), mkPackagingGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingGroup.AuthorizationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingGroup.LogConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PackagingGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackage-packaginggroup.html>
    PackagingGroup {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackage-packaginggroup.html#cfn-mediapackage-packaginggroup-authorization>
                    authorization :: (Prelude.Maybe AuthorizationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackage-packaginggroup.html#cfn-mediapackage-packaginggroup-egressaccesslogs>
                    egressAccessLogs :: (Prelude.Maybe LogConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackage-packaginggroup.html#cfn-mediapackage-packaginggroup-id>
                    id :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediapackage-packaginggroup.html#cfn-mediapackage-packaginggroup-tags>
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPackagingGroup :: Value Prelude.Text -> PackagingGroup
mkPackagingGroup id
  = PackagingGroup
      {haddock_workaround_ = (), id = id,
       authorization = Prelude.Nothing,
       egressAccessLogs = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties PackagingGroup where
  toResourceProperties PackagingGroup {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Id" JSON..= id]
                           (Prelude.catMaybes
                              [(JSON..=) "Authorization" Prelude.<$> authorization,
                               (JSON..=) "EgressAccessLogs" Prelude.<$> egressAccessLogs,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON PackagingGroup where
  toJSON PackagingGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Id" JSON..= id]
              (Prelude.catMaybes
                 [(JSON..=) "Authorization" Prelude.<$> authorization,
                  (JSON..=) "EgressAccessLogs" Prelude.<$> egressAccessLogs,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Authorization" PackagingGroup where
  type PropertyType "Authorization" PackagingGroup = AuthorizationProperty
  set newValue PackagingGroup {..}
    = PackagingGroup {authorization = Prelude.pure newValue, ..}
instance Property "EgressAccessLogs" PackagingGroup where
  type PropertyType "EgressAccessLogs" PackagingGroup = LogConfigurationProperty
  set newValue PackagingGroup {..}
    = PackagingGroup {egressAccessLogs = Prelude.pure newValue, ..}
instance Property "Id" PackagingGroup where
  type PropertyType "Id" PackagingGroup = Value Prelude.Text
  set newValue PackagingGroup {..}
    = PackagingGroup {id = newValue, ..}
instance Property "Tags" PackagingGroup where
  type PropertyType "Tags" PackagingGroup = [Tag]
  set newValue PackagingGroup {..}
    = PackagingGroup {tags = Prelude.pure newValue, ..}