module Stratosphere.Lightsail.Bucket (
        module Exports, Bucket(..), mkBucket
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lightsail.Bucket.AccessRulesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Bucket
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-bucket.html>
    Bucket {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-bucket.html#cfn-lightsail-bucket-accessrules>
            accessRules :: (Prelude.Maybe AccessRulesProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-bucket.html#cfn-lightsail-bucket-bucketname>
            bucketName :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-bucket.html#cfn-lightsail-bucket-bundleid>
            bundleId :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-bucket.html#cfn-lightsail-bucket-objectversioning>
            objectVersioning :: (Prelude.Maybe (Value Prelude.Bool)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-bucket.html#cfn-lightsail-bucket-readonlyaccessaccounts>
            readOnlyAccessAccounts :: (Prelude.Maybe (ValueList Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-bucket.html#cfn-lightsail-bucket-resourcesreceivingaccess>
            resourcesReceivingAccess :: (Prelude.Maybe (ValueList Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-bucket.html#cfn-lightsail-bucket-tags>
            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBucket :: Value Prelude.Text -> Value Prelude.Text -> Bucket
mkBucket bucketName bundleId
  = Bucket
      {haddock_workaround_ = (), bucketName = bucketName,
       bundleId = bundleId, accessRules = Prelude.Nothing,
       objectVersioning = Prelude.Nothing,
       readOnlyAccessAccounts = Prelude.Nothing,
       resourcesReceivingAccess = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Bucket where
  toResourceProperties Bucket {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Bucket", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketName" JSON..= bucketName, "BundleId" JSON..= bundleId]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessRules" Prelude.<$> accessRules,
                               (JSON..=) "ObjectVersioning" Prelude.<$> objectVersioning,
                               (JSON..=) "ReadOnlyAccessAccounts"
                                 Prelude.<$> readOnlyAccessAccounts,
                               (JSON..=) "ResourcesReceivingAccess"
                                 Prelude.<$> resourcesReceivingAccess,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Bucket where
  toJSON Bucket {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketName" JSON..= bucketName, "BundleId" JSON..= bundleId]
              (Prelude.catMaybes
                 [(JSON..=) "AccessRules" Prelude.<$> accessRules,
                  (JSON..=) "ObjectVersioning" Prelude.<$> objectVersioning,
                  (JSON..=) "ReadOnlyAccessAccounts"
                    Prelude.<$> readOnlyAccessAccounts,
                  (JSON..=) "ResourcesReceivingAccess"
                    Prelude.<$> resourcesReceivingAccess,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccessRules" Bucket where
  type PropertyType "AccessRules" Bucket = AccessRulesProperty
  set newValue Bucket {..}
    = Bucket {accessRules = Prelude.pure newValue, ..}
instance Property "BucketName" Bucket where
  type PropertyType "BucketName" Bucket = Value Prelude.Text
  set newValue Bucket {..} = Bucket {bucketName = newValue, ..}
instance Property "BundleId" Bucket where
  type PropertyType "BundleId" Bucket = Value Prelude.Text
  set newValue Bucket {..} = Bucket {bundleId = newValue, ..}
instance Property "ObjectVersioning" Bucket where
  type PropertyType "ObjectVersioning" Bucket = Value Prelude.Bool
  set newValue Bucket {..}
    = Bucket {objectVersioning = Prelude.pure newValue, ..}
instance Property "ReadOnlyAccessAccounts" Bucket where
  type PropertyType "ReadOnlyAccessAccounts" Bucket = ValueList Prelude.Text
  set newValue Bucket {..}
    = Bucket {readOnlyAccessAccounts = Prelude.pure newValue, ..}
instance Property "ResourcesReceivingAccess" Bucket where
  type PropertyType "ResourcesReceivingAccess" Bucket = ValueList Prelude.Text
  set newValue Bucket {..}
    = Bucket {resourcesReceivingAccess = Prelude.pure newValue, ..}
instance Property "Tags" Bucket where
  type PropertyType "Tags" Bucket = [Tag]
  set newValue Bucket {..}
    = Bucket {tags = Prelude.pure newValue, ..}