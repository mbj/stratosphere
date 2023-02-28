module Stratosphere.S3.AccessPoint (
        module Exports, AccessPoint(..), mkAccessPoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.AccessPoint.PolicyStatusProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.AccessPoint.PublicAccessBlockConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.AccessPoint.VpcConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessPoint
  = AccessPoint {bucket :: (Value Prelude.Text),
                 bucketAccountId :: (Prelude.Maybe (Value Prelude.Text)),
                 name :: (Prelude.Maybe (Value Prelude.Text)),
                 policy :: (Prelude.Maybe JSON.Object),
                 policyStatus :: (Prelude.Maybe PolicyStatusProperty),
                 publicAccessBlockConfiguration :: (Prelude.Maybe PublicAccessBlockConfigurationProperty),
                 vpcConfiguration :: (Prelude.Maybe VpcConfigurationProperty)}
mkAccessPoint :: Value Prelude.Text -> AccessPoint
mkAccessPoint bucket
  = AccessPoint
      {bucket = bucket, bucketAccountId = Prelude.Nothing,
       name = Prelude.Nothing, policy = Prelude.Nothing,
       policyStatus = Prelude.Nothing,
       publicAccessBlockConfiguration = Prelude.Nothing,
       vpcConfiguration = Prelude.Nothing}
instance ToResourceProperties AccessPoint where
  toResourceProperties AccessPoint {..}
    = ResourceProperties
        {awsType = "AWS::S3::AccessPoint", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket]
                           (Prelude.catMaybes
                              [(JSON..=) "BucketAccountId" Prelude.<$> bucketAccountId,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Policy" Prelude.<$> policy,
                               (JSON..=) "PolicyStatus" Prelude.<$> policyStatus,
                               (JSON..=) "PublicAccessBlockConfiguration"
                                 Prelude.<$> publicAccessBlockConfiguration,
                               (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration]))}
instance JSON.ToJSON AccessPoint where
  toJSON AccessPoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bucket" JSON..= bucket]
              (Prelude.catMaybes
                 [(JSON..=) "BucketAccountId" Prelude.<$> bucketAccountId,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Policy" Prelude.<$> policy,
                  (JSON..=) "PolicyStatus" Prelude.<$> policyStatus,
                  (JSON..=) "PublicAccessBlockConfiguration"
                    Prelude.<$> publicAccessBlockConfiguration,
                  (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration])))
instance Property "Bucket" AccessPoint where
  type PropertyType "Bucket" AccessPoint = Value Prelude.Text
  set newValue AccessPoint {..} = AccessPoint {bucket = newValue, ..}
instance Property "BucketAccountId" AccessPoint where
  type PropertyType "BucketAccountId" AccessPoint = Value Prelude.Text
  set newValue AccessPoint {..}
    = AccessPoint {bucketAccountId = Prelude.pure newValue, ..}
instance Property "Name" AccessPoint where
  type PropertyType "Name" AccessPoint = Value Prelude.Text
  set newValue AccessPoint {..}
    = AccessPoint {name = Prelude.pure newValue, ..}
instance Property "Policy" AccessPoint where
  type PropertyType "Policy" AccessPoint = JSON.Object
  set newValue AccessPoint {..}
    = AccessPoint {policy = Prelude.pure newValue, ..}
instance Property "PolicyStatus" AccessPoint where
  type PropertyType "PolicyStatus" AccessPoint = PolicyStatusProperty
  set newValue AccessPoint {..}
    = AccessPoint {policyStatus = Prelude.pure newValue, ..}
instance Property "PublicAccessBlockConfiguration" AccessPoint where
  type PropertyType "PublicAccessBlockConfiguration" AccessPoint = PublicAccessBlockConfigurationProperty
  set newValue AccessPoint {..}
    = AccessPoint
        {publicAccessBlockConfiguration = Prelude.pure newValue, ..}
instance Property "VpcConfiguration" AccessPoint where
  type PropertyType "VpcConfiguration" AccessPoint = VpcConfigurationProperty
  set newValue AccessPoint {..}
    = AccessPoint {vpcConfiguration = Prelude.pure newValue, ..}