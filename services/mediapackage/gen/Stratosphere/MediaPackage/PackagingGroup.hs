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
  = PackagingGroup {authorization :: (Prelude.Maybe AuthorizationProperty),
                    egressAccessLogs :: (Prelude.Maybe LogConfigurationProperty),
                    id :: (Value Prelude.Text),
                    tags :: (Prelude.Maybe [Tag])}
mkPackagingGroup :: Value Prelude.Text -> PackagingGroup
mkPackagingGroup id
  = PackagingGroup
      {id = id, authorization = Prelude.Nothing,
       egressAccessLogs = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties PackagingGroup where
  toResourceProperties PackagingGroup {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingGroup",
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