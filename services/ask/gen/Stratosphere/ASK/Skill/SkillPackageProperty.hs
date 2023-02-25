module Stratosphere.ASK.Skill.SkillPackageProperty (
        module Exports, SkillPackageProperty(..), mkSkillPackageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ASK.Skill.OverridesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SkillPackageProperty
  = SkillPackageProperty {overrides :: (Prelude.Maybe OverridesProperty),
                          s3Bucket :: (Value Prelude.Text),
                          s3BucketRole :: (Prelude.Maybe (Value Prelude.Text)),
                          s3Key :: (Value Prelude.Text),
                          s3ObjectVersion :: (Prelude.Maybe (Value Prelude.Text))}
mkSkillPackageProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SkillPackageProperty
mkSkillPackageProperty s3Bucket s3Key
  = SkillPackageProperty
      {s3Bucket = s3Bucket, s3Key = s3Key, overrides = Prelude.Nothing,
       s3BucketRole = Prelude.Nothing, s3ObjectVersion = Prelude.Nothing}
instance ToResourceProperties SkillPackageProperty where
  toResourceProperties SkillPackageProperty {..}
    = ResourceProperties
        {awsType = "Alexa::ASK::Skill.SkillPackage",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3Bucket" JSON..= s3Bucket, "S3Key" JSON..= s3Key]
                           (Prelude.catMaybes
                              [(JSON..=) "Overrides" Prelude.<$> overrides,
                               (JSON..=) "S3BucketRole" Prelude.<$> s3BucketRole,
                               (JSON..=) "S3ObjectVersion" Prelude.<$> s3ObjectVersion]))}
instance JSON.ToJSON SkillPackageProperty where
  toJSON SkillPackageProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3Bucket" JSON..= s3Bucket, "S3Key" JSON..= s3Key]
              (Prelude.catMaybes
                 [(JSON..=) "Overrides" Prelude.<$> overrides,
                  (JSON..=) "S3BucketRole" Prelude.<$> s3BucketRole,
                  (JSON..=) "S3ObjectVersion" Prelude.<$> s3ObjectVersion])))
instance Property "Overrides" SkillPackageProperty where
  type PropertyType "Overrides" SkillPackageProperty = OverridesProperty
  set newValue SkillPackageProperty {..}
    = SkillPackageProperty {overrides = Prelude.pure newValue, ..}
instance Property "S3Bucket" SkillPackageProperty where
  type PropertyType "S3Bucket" SkillPackageProperty = Value Prelude.Text
  set newValue SkillPackageProperty {..}
    = SkillPackageProperty {s3Bucket = newValue, ..}
instance Property "S3BucketRole" SkillPackageProperty where
  type PropertyType "S3BucketRole" SkillPackageProperty = Value Prelude.Text
  set newValue SkillPackageProperty {..}
    = SkillPackageProperty {s3BucketRole = Prelude.pure newValue, ..}
instance Property "S3Key" SkillPackageProperty where
  type PropertyType "S3Key" SkillPackageProperty = Value Prelude.Text
  set newValue SkillPackageProperty {..}
    = SkillPackageProperty {s3Key = newValue, ..}
instance Property "S3ObjectVersion" SkillPackageProperty where
  type PropertyType "S3ObjectVersion" SkillPackageProperty = Value Prelude.Text
  set newValue SkillPackageProperty {..}
    = SkillPackageProperty
        {s3ObjectVersion = Prelude.pure newValue, ..}