module Stratosphere.S3.Bucket.ObjectLockRuleProperty (
        module Exports, ObjectLockRuleProperty(..),
        mkObjectLockRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.DefaultRetentionProperty as Exports
import Stratosphere.ResourceProperties
data ObjectLockRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-objectlockrule.html>
    ObjectLockRuleProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-objectlockrule.html#cfn-s3-bucket-objectlockrule-defaultretention>
                            defaultRetention :: (Prelude.Maybe DefaultRetentionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkObjectLockRuleProperty :: ObjectLockRuleProperty
mkObjectLockRuleProperty
  = ObjectLockRuleProperty
      {haddock_workaround_ = (), defaultRetention = Prelude.Nothing}
instance ToResourceProperties ObjectLockRuleProperty where
  toResourceProperties ObjectLockRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.ObjectLockRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DefaultRetention" Prelude.<$> defaultRetention])}
instance JSON.ToJSON ObjectLockRuleProperty where
  toJSON ObjectLockRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DefaultRetention" Prelude.<$> defaultRetention]))
instance Property "DefaultRetention" ObjectLockRuleProperty where
  type PropertyType "DefaultRetention" ObjectLockRuleProperty = DefaultRetentionProperty
  set newValue ObjectLockRuleProperty {..}
    = ObjectLockRuleProperty
        {defaultRetention = Prelude.pure newValue, ..}