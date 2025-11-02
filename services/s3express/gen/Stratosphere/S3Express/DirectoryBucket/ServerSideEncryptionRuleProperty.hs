module Stratosphere.S3Express.DirectoryBucket.ServerSideEncryptionRuleProperty (
        module Exports, ServerSideEncryptionRuleProperty(..),
        mkServerSideEncryptionRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3Express.DirectoryBucket.ServerSideEncryptionByDefaultProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServerSideEncryptionRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3express-directorybucket-serversideencryptionrule.html>
    ServerSideEncryptionRuleProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3express-directorybucket-serversideencryptionrule.html#cfn-s3express-directorybucket-serversideencryptionrule-bucketkeyenabled>
                                      bucketKeyEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3express-directorybucket-serversideencryptionrule.html#cfn-s3express-directorybucket-serversideencryptionrule-serversideencryptionbydefault>
                                      serverSideEncryptionByDefault :: (Prelude.Maybe ServerSideEncryptionByDefaultProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServerSideEncryptionRuleProperty ::
  ServerSideEncryptionRuleProperty
mkServerSideEncryptionRuleProperty
  = ServerSideEncryptionRuleProperty
      {haddock_workaround_ = (), bucketKeyEnabled = Prelude.Nothing,
       serverSideEncryptionByDefault = Prelude.Nothing}
instance ToResourceProperties ServerSideEncryptionRuleProperty where
  toResourceProperties ServerSideEncryptionRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3Express::DirectoryBucket.ServerSideEncryptionRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BucketKeyEnabled" Prelude.<$> bucketKeyEnabled,
                            (JSON..=) "ServerSideEncryptionByDefault"
                              Prelude.<$> serverSideEncryptionByDefault])}
instance JSON.ToJSON ServerSideEncryptionRuleProperty where
  toJSON ServerSideEncryptionRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BucketKeyEnabled" Prelude.<$> bucketKeyEnabled,
               (JSON..=) "ServerSideEncryptionByDefault"
                 Prelude.<$> serverSideEncryptionByDefault]))
instance Property "BucketKeyEnabled" ServerSideEncryptionRuleProperty where
  type PropertyType "BucketKeyEnabled" ServerSideEncryptionRuleProperty = Value Prelude.Bool
  set newValue ServerSideEncryptionRuleProperty {..}
    = ServerSideEncryptionRuleProperty
        {bucketKeyEnabled = Prelude.pure newValue, ..}
instance Property "ServerSideEncryptionByDefault" ServerSideEncryptionRuleProperty where
  type PropertyType "ServerSideEncryptionByDefault" ServerSideEncryptionRuleProperty = ServerSideEncryptionByDefaultProperty
  set newValue ServerSideEncryptionRuleProperty {..}
    = ServerSideEncryptionRuleProperty
        {serverSideEncryptionByDefault = Prelude.pure newValue, ..}