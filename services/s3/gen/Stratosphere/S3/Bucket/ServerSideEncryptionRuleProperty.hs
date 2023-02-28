module Stratosphere.S3.Bucket.ServerSideEncryptionRuleProperty (
        module Exports, ServerSideEncryptionRuleProperty(..),
        mkServerSideEncryptionRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.ServerSideEncryptionByDefaultProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServerSideEncryptionRuleProperty
  = ServerSideEncryptionRuleProperty {bucketKeyEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                      serverSideEncryptionByDefault :: (Prelude.Maybe ServerSideEncryptionByDefaultProperty)}
mkServerSideEncryptionRuleProperty ::
  ServerSideEncryptionRuleProperty
mkServerSideEncryptionRuleProperty
  = ServerSideEncryptionRuleProperty
      {bucketKeyEnabled = Prelude.Nothing,
       serverSideEncryptionByDefault = Prelude.Nothing}
instance ToResourceProperties ServerSideEncryptionRuleProperty where
  toResourceProperties ServerSideEncryptionRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.ServerSideEncryptionRule",
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