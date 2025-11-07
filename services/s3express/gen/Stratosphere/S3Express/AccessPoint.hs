module Stratosphere.S3Express.AccessPoint (
        module Exports, AccessPoint(..), mkAccessPoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3Express.AccessPoint.PublicAccessBlockConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3Express.AccessPoint.ScopeProperty as Exports
import {-# SOURCE #-} Stratosphere.S3Express.AccessPoint.VpcConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AccessPoint
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3express-accesspoint.html>
    AccessPoint {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3express-accesspoint.html#cfn-s3express-accesspoint-bucket>
                 bucket :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3express-accesspoint.html#cfn-s3express-accesspoint-bucketaccountid>
                 bucketAccountId :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3express-accesspoint.html#cfn-s3express-accesspoint-name>
                 name :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3express-accesspoint.html#cfn-s3express-accesspoint-policy>
                 policy :: (Prelude.Maybe JSON.Object),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3express-accesspoint.html#cfn-s3express-accesspoint-publicaccessblockconfiguration>
                 publicAccessBlockConfiguration :: (Prelude.Maybe PublicAccessBlockConfigurationProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3express-accesspoint.html#cfn-s3express-accesspoint-scope>
                 scope :: (Prelude.Maybe ScopeProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3express-accesspoint.html#cfn-s3express-accesspoint-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3express-accesspoint.html#cfn-s3express-accesspoint-vpcconfiguration>
                 vpcConfiguration :: (Prelude.Maybe VpcConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessPoint :: Value Prelude.Text -> AccessPoint
mkAccessPoint bucket
  = AccessPoint
      {haddock_workaround_ = (), bucket = bucket,
       bucketAccountId = Prelude.Nothing, name = Prelude.Nothing,
       policy = Prelude.Nothing,
       publicAccessBlockConfiguration = Prelude.Nothing,
       scope = Prelude.Nothing, tags = Prelude.Nothing,
       vpcConfiguration = Prelude.Nothing}
instance ToResourceProperties AccessPoint where
  toResourceProperties AccessPoint {..}
    = ResourceProperties
        {awsType = "AWS::S3Express::AccessPoint",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket]
                           (Prelude.catMaybes
                              [(JSON..=) "BucketAccountId" Prelude.<$> bucketAccountId,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Policy" Prelude.<$> policy,
                               (JSON..=) "PublicAccessBlockConfiguration"
                                 Prelude.<$> publicAccessBlockConfiguration,
                               (JSON..=) "Scope" Prelude.<$> scope,
                               (JSON..=) "Tags" Prelude.<$> tags,
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
                  (JSON..=) "PublicAccessBlockConfiguration"
                    Prelude.<$> publicAccessBlockConfiguration,
                  (JSON..=) "Scope" Prelude.<$> scope,
                  (JSON..=) "Tags" Prelude.<$> tags,
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
instance Property "PublicAccessBlockConfiguration" AccessPoint where
  type PropertyType "PublicAccessBlockConfiguration" AccessPoint = PublicAccessBlockConfigurationProperty
  set newValue AccessPoint {..}
    = AccessPoint
        {publicAccessBlockConfiguration = Prelude.pure newValue, ..}
instance Property "Scope" AccessPoint where
  type PropertyType "Scope" AccessPoint = ScopeProperty
  set newValue AccessPoint {..}
    = AccessPoint {scope = Prelude.pure newValue, ..}
instance Property "Tags" AccessPoint where
  type PropertyType "Tags" AccessPoint = [Tag]
  set newValue AccessPoint {..}
    = AccessPoint {tags = Prelude.pure newValue, ..}
instance Property "VpcConfiguration" AccessPoint where
  type PropertyType "VpcConfiguration" AccessPoint = VpcConfigurationProperty
  set newValue AccessPoint {..}
    = AccessPoint {vpcConfiguration = Prelude.pure newValue, ..}